## ---- echo = F-----------------------------------------------------------------
meteo_train = read.table('meteo.train.csv', sep = ',', header = T, row.names = 1)
str(meteo_train)


## ------------------------------------------------------------------------------
sum(is.na(meteo_train))


## ---- echo = F-----------------------------------------------------------------
summary(meteo_train[,4:5])


## ---- echo = F-----------------------------------------------------------------
meteo_train = subset(meteo_train, select = -c(Hour,Minute))
dim(meteo_train)


## ---- echo = F, fig.width = 4, fig.height = 3, fig.align = 'center'------------
library(ggplot2)

ggplot(meteo_train, aes(pluie.demain))+
  geom_bar(fill = c('darkorange2','darkolivegreen4'))+
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5))+
  ylab("Nombre de jours")+
  xlab("Pluie")+
  ggtitle("Distribution de Variable Cible")


## ---- echo = F, message = F, fig.width = 12, fig.height = 10-------------------
library(corrplot)
corrplot(cor(meteo_train, use="complete"), tl.cex = 0.8, tl.col = "gray35")


## ---- include = F--------------------------------------------------------------
library(MASS)
zero_model = glm(pluie.demain ~ 1 , data = meteo_train, family = binomial)
full_model = glm(pluie.demain ~ . , data = meteo_train, family = binomial)

step_aic = stepAIC(zero_model, direction = 'forward', scope = list(lower = zero_model, upper = full_model))
step_bic = stepAIC(zero_model, direction = 'forward', scope = list(lower = zero_model, upper = full_model), k = log(nrow(meteo_train)))


## ---- echo = F, fig.width = 12, fig.height = 5, warning = F--------------------
library(gridExtra)
library(grid())

aic = data.frame(value = step_aic$anova$AIC, index = c(1:15))
bic = data.frame(value = step_bic$anova$AIC, index = c(1:8))

bic_min = data.frame(min = min(bic$value), index = which.min(bic$value))
aic_min = data.frame(min = min(aic$value), index = which.min(aic$value))

plot_bic = ggplot(bic, aes(x=index, y = value))+
  geom_line(color = 'darkolivegreen4', size = 1)+
  geom_point(aes(x = bic_min$index, y = bic_min$min), color = 'darkorange', pch = 1, size = 3)+
  geom_text(aes(x = bic_min$index - 0.2, y = bic_min$min - 10), label = paste0("(",bic_min$index, ", ", round(bic_min$min,2),")"), size = 3, color = 'gray35')+
  theme_minimal()+
  ylab("BIC")+
  xlab("Nombre de variables")+
  ggtitle("BIC")+
  theme(plot.title = element_text(hjust = 0.5))

plot_aic = ggplot(aic, aes(x=index, y = value))+
  geom_line(color = 'darkolivegreen4', size = 1)+
  geom_point(aes(x = aic_min$index, y = aic_min$min), color = 'darkorange', pch = 1, size = 3)+
  geom_text(aes(x = aic_min$index - 0.5, y = aic_min$min - 11), label = paste0("(",aic_min$index, ", ", round(aic_min$min,2),")"), size = 3, color = 'gray35')+
  theme_minimal()+
  ylab("AIC")+
  xlab("Nombre de variables")+
  ggtitle("AIC")+
  theme(plot.title = element_text(hjust = 0.5))

grid.arrange(plot_bic, plot_aic, ncol = 2, top=textGrob("Variables sélectionnées"))


## ---- echo = F-----------------------------------------------------------------
variable_aic = rownames(data.frame(step_aic$coefficients))
variable_aic


## ---- echo = F-----------------------------------------------------------------
variable_bic = rownames(data.frame(step_bic$coefficients))
variable_bic


## ---- echo = F, message = F, fig.width = 12, fig.height = 10-------------------
selection_aic = meteo_train[c(variable_aic[2:15],"pluie.demain" )]
selection_bic = meteo_train[c(variable_bic[2:8],"pluie.demain" )]

corrplot(cor(selection_aic, use="complete"), tl.cex = 0.8, tl.col = "gray35", type="upper")


## ---- echo = F, fig.width = 12, fig.height = 10--------------------------------
selection_final = subset(selection_aic, 
                         select = -c(Wind.Speed.daily.max..10.m.above.gnd., Wind.Speed.daily.min..10.m.above.gnd., Temperature.daily.min..2.m.above.gnd.,
                                     Wind.Direction.daily.mean..80.m.above.gnd., Wind.Speed.daily.mean..80.m.above.gnd.))
corrplot(cor(selection_final, use="complete"), tl.cex = 0.8, tl.col = "gray35", type="upper")


## ------------------------------------------------------------------------------
set.seed(1)
split = sample(2, nrow(selection_final), replace = T, prob = c(0.8, 0.2))
train = selection_final[split == 1, ]
test = selection_final[split == 2, ]


## ---- echo = F-----------------------------------------------------------------
model_1 = glm(data = train, pluie.demain ~ ., family = binomial)
summary(model_1)


## ---- echo = F-----------------------------------------------------------------
model_2 = glm(data = train, pluie.demain ~ .-Total.Cloud.Cover.daily.mean..sfc. -Year -Wind.Gust.daily.max..sfc.
              -Snowfall.amount.raw.daily.sum..sfc. -Total.Cloud.Cover.daily.min..sfc., family = binomial)
summary(model_2)


## ---- echo = F-----------------------------------------------------------------
model_3 = step(model_1, trace = F)
summary(model_3)


## ---- echo = F-----------------------------------------------------------------
pred_train_2 = predict(model_2, train, type = 'response')
pred_train_3 = predict(model_3, train, type = 'response')

pred_test_2 = predict(model_2, test, type = 'response')
pred_test_3 = predict(model_3, test, type = 'response')

pred_2 = pred_test_2 > 0.5
pred_3 = pred_test_2 > 0.5


## ---- echo = F-----------------------------------------------------------------
mean(pred_2 == (test$pluie.demain == T))
table(pred_2, test$pluie.demain)


## ---- echo = F-----------------------------------------------------------------
mean(pred_3 == (test$pluie.demain == T))
table(pred_3, test$pluie.demain)


## ---- warning = F, echo = F, fig.width = 12, fig.height = 5--------------------
library(plotROC)

p_train_rocr2 = data.frame(prediction = pred_train_2, real = train$pluie.demain, data_name = "train2")
p_train_rocr3 = data.frame(prediction = pred_train_3, real = train$pluie.demain, data_name = "train3")

p_test_rocr2 = data.frame(prediction = pred_test_2, real = test$pluie.demain, data_name = "test2")
p_test_rocr3 = data.frame(prediction = pred_test_2, real = test$pluie.demain, data_name = "test3")

p_rocr2 = rbind(p_train_rocr2, p_test_rocr2)
p_rocr3 = rbind(p_train_rocr3, p_test_rocr3)

rocr2 = ggplot(p_rocr2, aes(d = real, m = prediction, color = data_name))+
  geom_roc(size = 0.8)+
  geom_abline(intercept = 0, slope = 1, linetype = 3)+
  geom_abline(intercept = 1, slope = -1, alpha = 0.1)+
  theme_minimal()

rocr3 = ggplot(p_rocr3, aes(d = real, m = prediction, color = data_name))+
  geom_roc(size = 0.8)+
  geom_abline(intercept = 0, slope = 1, linetype = 3)+
  geom_abline(intercept = 1, slope = -1, alpha = 0.1)+
  theme_minimal()

grid.arrange(rocr2, rocr3, ncol = 2, top=textGrob(""))


## ---- warning = F--------------------------------------------------------------
calc_auc(rocr2)


## ---- warning = F--------------------------------------------------------------
calc_auc(rocr3)


## ---- echo = F, fig.width = 4, fig.height = 3, fig.align = 'center'------------
meteo_test = read.table('meteo.test.csv', sep = ',', header = T, row.names = 1)

final_predict = predict(model_3, meteo_test, type = 'response')
prediction_test = final_predict > 0.5

pred = data.frame(prediction_test)

ggplot(pred, aes(prediction_test))+
  geom_bar(fill = c('darkorange2','darkolivegreen4'))+
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5))+
  ylab("Nombre de jours")+
  xlab("Pluie")+
  ggtitle("Prévision de Pluie")


## ---- echo = F-----------------------------------------------------------------
write.csv(prediction_test, file = "/Users/haeji/Desktop/test.csv")

