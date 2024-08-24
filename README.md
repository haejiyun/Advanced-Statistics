# Advanced Statistics Projects
This portfolio showcases a collection of advanced statistical projects, where complex data sets are analyzed to make informed predictions and uncover insights. Each project employs a variety of statistical methods, from generalized linear models to time series analysis, providing a deep dive into specific domains such as meteorology, elections, and market trends.

----------
## [R] Rain prediction with Generalized Linear Model & Model Selection Method

This project addresses the challenge of predicting rainfall in Basel, Switzerland, by leveraging historical meteorological data. The dataset comprises 1,180 observations, each containing 46 covariates, such as temperature, humidity, and wind speed. 

Due to the high correlation among these variables, the first phase of the project focuses on selecting the most relevant predictors using techniques like stepwise selection and regularization methods. The second phase involves building a binary classification model, specifically a logistic regression model, to predict whether it will rain the next day. Model selection criteria, such as AIC and BIC, are employed to choose the best-fitting model, ensuring accuracy while avoiding overfitting.

<br/>

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/confusion.png" width="375" height="150">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/bic.png" width="375" height="150">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/MLG_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Generalized%20Linear%20Model/MLG_haeji_yun.Rmd">Code</a><br/>
<br/>


----------
## [R] Non Parametric Estimation

This project explores the theoretical and practical aspects of non-parametric statistical methods, which do not assume a specific parametric form for the underlying data distribution. 

The study begins with kernel density estimation, where the focus is on understanding how different kernel functions and bandwidth selections affect the smoothness and accuracy of the estimated density. The project then delves into non-parametric regression, comparing it with traditional linear regression to highlight the flexibility of non-parametric methods in capturing complex relationships within data. Cross-validation is extensively used to optimize the choice of parameters, such as bandwidth in kernel methods, ensuring the models are both accurate and generalizable.

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/densite.png" width="400" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/estimation.png" width="350" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/Estimation_non_parametrique.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Non%20Parametric%20Estimation/projet_non_parametrique.Rmd">Code</a><br/>
<br/>


----------
## [R] Principal Component Analysis, Factorial Correspondance Analysis, CAH

*PCA*<br>
This project investigates daily protein consumption across 25 European countries, focusing on identifying dietary patterns and trends. 
Principal Component Analysis is employed to reduce the dimensionality of the dataset, revealing the main factors that contribute to differences in protein consumption. The analysis uncovers clusters of countries with similar dietary habits and highlights outliers with unique consumption patterns, providing insights into regional dietary differences.

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/individus.png" width="200" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/correlation.png" width="200" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/inertie.png" width="400" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/ACP_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/ACP_haeji_yun.Rmd">Code</a><br/>
<br/>


*FCA*<br>
The second part of this project applies Factorial Correspondence Analysis (FCA) to the 2017 French presidential election results. The dataset includes 14 candidates and the number of votes they received across various departments in France. 
FCA is used to map the relationships between candidates and regions, offering a visual representation of how different areas of France align with specific political ideologies. The analysis is further enriched by Hierarchical Ascendant Classification, which groups departments with similar voting patterns, providing a deeper understanding of electoral dynamics.

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/cluster.png" width="250" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/visu.png" width="250" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/saut.png" width="300" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/AFC_Classification_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Scoring/AFC_Classification_haeji_yun.Rmd">Code</a><br/>
<br/>

----------
## [R] Coffee Bean Price Prediction with Time Series Method

This project leverages time series analysis to forecast future coffee bean prices using historical data. The dataset, covering the period from January 2005 to December 2020, includes daily records of key pricing metrics: the highest, lowest, opening, and closing prices, along with the transaction volumes.

In the exploratory phase, visual tools like chronograms, month plots, and lag plots are used to uncover underlying patterns and seasonal trends in the data. Following this, several time series models such as ARIMA, SARIMA, and exponential smoothing are implemented to generate price forecasts. These models are rigorously compared to identify the most accurate and robust approach for predicting future price movements, providing valuable insights into market trends and volatility.

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Time%20Series/sarima.png" width="400" height="180">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Time%20Series/décomposition.png" width="400" height="180">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Time%20Series/time_series_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Time%20Series/time_series_haeji_yun.Rmd">Code</a><br/>
<br/>

----------
## [R] High School Mutation Score Prediction with Bayesian Estimation

This project aims to predict the points required for high school teachers to secure transfers to different schools within the Versailles academy, focusing on the year 2012. The points system is influenced by various factors, including the school's enrollment numbers, success rates, and accessibility metrics. 

Bayesian regression is employed to model the relationship between these factors and the required points, offering a probabilistic approach that incorporates prior knowledge and uncertainty. The Bayesian model is compared with a frequentist linear regression approach to assess its predictive performance and to illustrate the benefits of using Bayesian methods in handling complex, uncertain data.

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Bayesian%20Statistics/frequentist.png" width="500" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Bayesian%20Statistics/density.png" width="300" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Bayesian%20Statistics/statistique_bayesienne.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Bayesian%20Statistics/statistique_bayesienne.Rmd">Code</a><br/>
<br/>

----------
## [R] Daily precipitation prediction with Extreme Values Theory

This project focuses on estimating the extreme levels of daily rainfall in Marseille, with a particular interest in predicting the maximum rainfall expected to occur once in 100 years and once in 1,000 years. The dataset comprises 127 years of daily rainfall data, recorded from August 1, 1864, to July 31, 1991. 

The analysis employs Extreme Value Theory, specifically using the block maxima approach and the Generalized Pareto Distribution, to model the tail behavior of the rainfall distribution. Maximum likelihood estimation and the method of moments are used to estimate the parameters of the extreme value distributions, providing insights into the potential for future extreme weather events in the region.

<p align="center">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/maxima.png" width="350" height="200">
  <img src="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/graph.png" width="400" height="200">
<p/>

<a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/valeurs_extremes_haeji_yun.pdf">Project</a>; <a href="https://github.com/haejiyun/Advanced-Statistics/blob/main/Extreme%20Values/valeurs_extremes.Rmd">Code</a><br/>
<br/>

----------
## [Python] Churn Analysis with Survival Model

This project analyzes customer churn in an online gaming environment, where churn is defined as 90 days of inactivity. The goal is to predict the probability of churn based on various player characteristics, such as the level of the game character, the character's race, the zones visited within the game, and whether the player belongs to a group. 
Survival analysis, specifically the Cox proportional hazards model, is used to model the time until churn occurs, providing a predictive tool that can help game developers understand the factors leading to customer attrition. 
This analysis is critical for developing strategies to retain players and reduce churn rates in the competitive online gaming industry.

