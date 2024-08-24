# Advanced Statistics Projects

----------
## [R] Rain prediction with Generalized Linear Model & Model Selection Method

Rain prediction at Bale in Switzerland based on past meteorological information. The dataset has 1,180 observations and 46 covariates which are very correlated. The first part of the project is about selecting the relevant covariates and the second part of the project is about creating an efficient binary model.

Dans cette analyse, nous nous intéressons à prédire s’il va pleuvoir ou pas le lendemain à Bâle en nous basant sur différentes variables météorologiques qui composent notre jeu de données. Notre jeu de données contient 1180 observations et 46 variables. Les observations correspondent aux différents jours entre 2010 et 2018 et les variables correspondent à différentes caractéristiques météorologiques.

avec techniques modèles lineaires généralisées et choix de modèles

Comme notre étude consiste à prédire s’il va pleuvoir le lendemain ou pas, c’est une variable discrète binaire vrai ou faux que nous voudrons obtenir. Il s’agit d’une classification.

la régression logistique
Parmi les critères de sélection de modèles, nous ne pourrons pas utiliser R2 ajusté et Cp de Mallows car ils utilisent le résidu de modèle linéaire. Nous allons utiliser les critères aic et bic qui utilisent la vraisemblance

<br/>

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/confusion.png" width="375" height="150">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/bic.png" width="375" height="150">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/MLG_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/MLG_haeji_yun.Rmd">Code</a><br/>
<br/>


----------
## [R] Non Parametric Estimation

Theoretical application of non parametric model focusing on explanation of its mathematical foundation from kernel estimation to non parametric regression. The emphasis on the choice of the window and the cross-validation.
estimation de densité, estimation de la fonction de régression, comparaison régression linéaire vs régression non paramétrique, validation croisée

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/densite.png" width="400" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/estimation.png" width="350" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/Estimation_non_parametrique.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/projet_non_parametrique.Rmd">Code</a><br/>
<br/>


----------
## [R] Principal Component Analysis, Factorial Correspondance Analysis, CAH

*PCA*<br>
Analysis of daily protein consumption of european countries. The dataset is composed of different proteine source with the protein quantity of 25 countries based on which similarities, differences, and particularities are analysed.
Dans cette étude, nous allons analyser la consommation journalière de proteine des pays européens. Les individus sont les pays et les variables sont les différentes sources de proteine qui donnent l’information sur la quantité consommée exprimée en même unité pour toutes les sources.

analyse des axes principales, acp normé, acp non-normé

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/individus.png" width="200" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/correlation.png" width="200" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/inertie.png" width="400" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/ACP_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/ACP_haeji_yun.Rmd">Code</a><br/>
<br/>


*FCA*<br>
Analysis of 2017 presidential election of France. 14 candidats and the number of votes they received in different departments compose the dataset. The study gives the first insight on the association between the candidates and the departments. The study is then deepen with the clustering method.

Dansceprojet,nousétudions lesrésultatsdel’électionprésidentielle2017. Pourcela,nousallonsanalyser lenombredevotesquelescandidatsontobtenuàchaquedépartement.

AFC, test d'independance, Classification Ascendante Hiérarchique

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/cluster.png" width="250" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/visu.png" width="250" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/saut.png" width="350" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/AFC_Classification_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/AFC_Classification_haeji_yun.Rmd">Code</a><br/>
<br/>

----------
## [R] Coffee Bean Price Prediction with Time Series Method**

Application of time series theory on anlysis of kilo coffee price. The analysis is done with graphical method and different time series analysis methods in order to make a prediction of future kilo coffe prices. Differents time series models are compared.

<p align="center">
  <img src="" width="120" height="150">
  <img src="" width="120" height="150">
  <img src="" width="120" height="150">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Time%20Series/time_series_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Time%20Series/time_series_haeji_yun.Rmd">Code</a><br/>
<br/>

----------
## [R] High School Mutation Score Prediction with Bayesian Estimation

Prediction of necessary points in order for a high school teacher to get mutated to other school. The number of points is prediction for each set of 'high school - subject' using baysian regression. A comparison with a frequentist approch is tested in order to check the plausibility of the bayesian model.  

<p align="center">
  <img src="" width="120" height="150">
  <img src="" width="120" height="150">
  <img src="" width="120" height="150">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Bayesian%20Statistics/statistique_bayesienne.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Bayesian%20Statistics/statistique_bayesienne.Rmd">Code</a><br/>
<br/>

----------
## [R] Daily precipitation prediction with Extreme Values Theory

Dans ce projet, nous cherchons à estimer le niveau de retour de pluie journalière à Marseille, c'est-à-dire le niveau extrême de pluie que nous attendons à dépasser dans 100 ans et dans 1000 ans. Pour cela, nous allons étudier un jeu de données qui contient l'accumulation de pluie journalière en 10−1 mm à Marseille pendant 127 ans depuis le 1er août 1864 jusqu'au 31 juillet 1991. Le jeu de données est sous forme d'un vecteur de dimension 46.355 qui correspond à 365 jours x 127 ans et il n'a pas de valeurs manquantes.

application de différents lois d'extremes : approche de maxima par bloc, estimation par le maximum de vraisemblance, estimation par la méthode des moments, loi de pareto généralisée


<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/maxima.png" width="350" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/graph.png" width="400" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/valeurs_extremes_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/valeurs_extremes.Rmd">Code</a><br/>
<br/>

----------
## [Python] Churn Analysis with Survival Model

Churn analysis of an online game. Considering 90 days of inactivity as churn, the probability to churn is predicted based on the users' game characteristics such as the level, the race of game character, the zone visited by the character, belonging to a group etc
