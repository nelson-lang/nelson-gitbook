# Statistiques


    
Le module Statistiques fournit des outils pour analyser et resumer des donnees dans Nelson.

    
Il comprend des fonctions pour calculer des mesures de tendance centrale, de variabilite, de correlation et des distributions de probabilites.

    
Le module prend egalement en charge des structures avancees de synthese de donnees pour une estimation precise des quantiles, permettant une analyse statistique robuste et l'interpretation des jeux de donnees.

  

## Statistiques descriptives et visualisation


    
Fonctions pour resumer, explorer, classer et visualiser des donnees statistiques.

  

### Functions

- [bootci](1_descriptive_statistics_visualization/bootci.md) - Intervalle de confiance bootstrap.
- [bootstrp](1_descriptive_statistics_visualization/bootstrp.md) - Echantillonnage bootstrap.
- [corr](1_descriptive_statistics_visualization/corr.md) - Correlation lineaire ou de rang.
- [corrcoef](1_descriptive_statistics_visualization/corrcoef.md) - Coefficients de corrélation
- [cov](1_descriptive_statistics_visualization/cov.md) - Covariance
- [crosstab](1_descriptive_statistics_visualization/crosstab.md) - Tableau croise.
- [ecdf](1_descriptive_statistics_visualization/ecdf.md) - Fonction de repartition empirique.
- [geomean](1_descriptive_statistics_visualization/geomean.md) - Moyenne geometrique d'un jeu de donnees.
- [harmmean](1_descriptive_statistics_visualization/harmmean.md) - Moyenne harmonique d'un jeu de donnees.
- [hist](1_descriptive_statistics_visualization/hist.md) - Comptage des classes d'un histogramme.
- [histfit](1_descriptive_statistics_visualization/histfit.md) - Histogramme avec courbe de distribution ajustee.
- [iqr](1_descriptive_statistics_visualization/iqr.md) - Écart interquartile.
- [jackknife](1_descriptive_statistics_visualization/jackknife.md) - Statistiques jackknife.
- [ksdensity](1_descriptive_statistics_visualization/ksdensity.md) - Estimation par lissage a noyau.
- [kurtosis](1_descriptive_statistics_visualization/kurtosis.md) - Aplatissement d'un jeu de donnees.
- [mad](1_descriptive_statistics_visualization/mad.md) - Ecart absolu moyen ou median.
- [mean](1_descriptive_statistics_visualization/mean.md) - Moyenne des éléments d'un tableau.
- [median](1_descriptive_statistics_visualization/median.md) - Valeur mediane des elements d'un tableau.
- [mode](1_descriptive_statistics_visualization/mode.md) - Valeurs les plus frequentes.
- [moment](1_descriptive_statistics_visualization/moment.md) - Moment centre d'un jeu de donnees.
- [nanmax](1_descriptive_statistics_visualization/nanmax.md) - Maximum, en ignorant les valeurs NaN.
- [nanmean](1_descriptive_statistics_visualization/nanmean.md) - Moyenne en ignorant les valeurs NaN.
- [nanmedian](1_descriptive_statistics_visualization/nanmedian.md) - Mediane en ignorant les valeurs NaN.
- [nanmin](1_descriptive_statistics_visualization/nanmin.md) - Minimum, en ignorant les valeurs NaN.
- [nanstd](1_descriptive_statistics_visualization/nanstd.md) - Ecart type en ignorant les valeurs NaN.
- [nansum](1_descriptive_statistics_visualization/nansum.md) - Somme, en ignorant les valeurs NaN.
- [nanvar](1_descriptive_statistics_visualization/nanvar.md) - Variance en ignorant les valeurs NaN.
- [prctile](1_descriptive_statistics_visualization/prctile.md) - Percentiles d'un jeu de données.
- [probplot](1_descriptive_statistics_visualization/probplot.md) - Trace de probabilite.
- [qqplot](1_descriptive_statistics_visualization/qqplot.md) - Trace quantile-quantile.
- [quantile](1_descriptive_statistics_visualization/quantile.md) - Quantiles d'un jeu de données.
- [range](1_descriptive_statistics_visualization/range.md) - Étendue des valeurs
- [skewness](1_descriptive_statistics_visualization/skewness.md) - Asymetrie d'un jeu de donnees.
- [std](1_descriptive_statistics_visualization/std.md) - Écart type
- [tabulate](1_descriptive_statistics_visualization/tabulate.md) - Table de frequences.
- [tdigest](1_descriptive_statistics_visualization/tdigest.md) - Structure de données t-digest pour une estimation précise des quantiles avec paramètres de compression configurables
- [tiedrank](1_descriptive_statistics_visualization/tiedrank.md) - Rangs avec moyenne pour les ex aequo.
- [trimmean](1_descriptive_statistics_visualization/trimmean.md) - Moyenne apres suppression des valeurs extremes.
- [var](1_descriptive_statistics_visualization/var.md) - Variance
- [zscore](1_descriptive_statistics_visualization/zscore.md) - Scores z standardises.

## Distributions de probabilites


    
Fonctions de distribution pour densite, probabilite cumulee, probabilite inverse, ajustement, vraisemblance, tirage aleatoire et statistiques de synthese.

  

### Functions

- [betacdf](2_probability_distributions/betacdf.md) - Fonction de repartition beta
- [betafit](2_probability_distributions/betafit.md) - Estimation des parametres beta
- [betainv](2_probability_distributions/betainv.md) - Fonction de repartition inverse beta
- [betalike](2_probability_distributions/betalike.md) - Oppose de la log-vraisemblance beta
- [betapdf](2_probability_distributions/betapdf.md) - Densite de probabilite beta
- [betarnd](2_probability_distributions/betarnd.md) - Nombres aleatoires beta
- [betastat](2_probability_distributions/betastat.md) - Moyenne et variance beta
- [binocdf](2_probability_distributions/binocdf.md) - Fonction de repartition binomiale
- [binofit](2_probability_distributions/binofit.md) - Estimation de probabilite binomiale
- [binoinv](2_probability_distributions/binoinv.md) - Fonction de repartition inverse binomiale
- [binolike](2_probability_distributions/binolike.md) - Oppose de la log-vraisemblance binomiale
- [binopdf](2_probability_distributions/binopdf.md) - Fonction de masse binomiale
- [binornd](2_probability_distributions/binornd.md) - Nombres aleatoires binomiaux
- [binostat](2_probability_distributions/binostat.md) - Moyenne et variance binomiales
- [chi2cdf](2_probability_distributions/chi2cdf.md) - Fonction de repartition chi-square
- [chi2inv](2_probability_distributions/chi2inv.md) - Inverse de la fonction de repartition chi-square
- [chi2pdf](2_probability_distributions/chi2pdf.md) - Densite de probabilite chi-square
- [chi2rnd](2_probability_distributions/chi2rnd.md) - Nombres aleatoires khi deux
- [chi2stat](2_probability_distributions/chi2stat.md) - Moyenne et variance du khi deux
- [evcdf](2_probability_distributions/evcdf.md) - Fonction de repartition de la loi extreme value
- [evfit](2_probability_distributions/evfit.md) - Estimation des parametres de la loi extreme value
- [evinv](2_probability_distributions/evinv.md) - Inverse de la fonction de repartition de la loi extreme value
- [evlike](2_probability_distributions/evlike.md) - Oppose de la log-vraisemblance de la loi extreme value
- [evpdf](2_probability_distributions/evpdf.md) - Fonction de densite de la loi extreme value
- [evrnd](2_probability_distributions/evrnd.md) - Nombres aleatoires de loi extreme value
- [evstat](2_probability_distributions/evstat.md) - Moyenne et variance de la loi extreme value
- [expcdf](2_probability_distributions/expcdf.md) - Fonction de repartition exponentielle
- [expfit](2_probability_distributions/expfit.md) - Estimation de la moyenne exponentielle
- [expinv](2_probability_distributions/expinv.md) - Fonction de repartition inverse exponentielle
- [explike](2_probability_distributions/explike.md) - Oppose de la log-vraisemblance exponentielle
- [exppdf](2_probability_distributions/exppdf.md) - Densite de probabilite exponentielle
- [exprnd](2_probability_distributions/exprnd.md) - Nombres aleatoires exponentiels
- [expstat](2_probability_distributions/expstat.md) - Moyenne et variance exponentielles
- [fcdf](2_probability_distributions/fcdf.md) - Fonction de repartition F
- [finv](2_probability_distributions/finv.md) - Fonction de repartition inverse F
- [fpdf](2_probability_distributions/fpdf.md) - Densite de probabilite F
- [frnd](2_probability_distributions/frnd.md) - Nombres aleatoires F
- [fstat](2_probability_distributions/fstat.md) - Moyenne et variance F
- [gamcdf](2_probability_distributions/gamcdf.md) - Fonction de repartition gamma
- [gamfit](2_probability_distributions/gamfit.md) - Estimations des parametres gamma
- [gaminv](2_probability_distributions/gaminv.md) - Fonction de repartition inverse gamma
- [gamlike](2_probability_distributions/gamlike.md) - Log-vraisemblance negative gamma
- [gampdf](2_probability_distributions/gampdf.md) - Densite de probabilite gamma
- [gamrnd](2_probability_distributions/gamrnd.md) - Nombres aleatoires gamma
- [gamstat](2_probability_distributions/gamstat.md) - Moyenne et variance gamma
- [geocdf](2_probability_distributions/geocdf.md) - Fonction de repartition geometrique
- [geofit](2_probability_distributions/geofit.md) - Estimation de probabilite geometrique
- [geoinv](2_probability_distributions/geoinv.md) - Inverse de la fonction de repartition geometrique
- [geolike](2_probability_distributions/geolike.md) - Oppose de la log-vraisemblance geometrique
- [geopdf](2_probability_distributions/geopdf.md) - Probabilite de la loi geometrique
- [geornd](2_probability_distributions/geornd.md) - Nombres aleatoires geometriques
- [geostat](2_probability_distributions/geostat.md) - Moyenne et variance geometriques
- [gevcdf](2_probability_distributions/gevcdf.md) - Fonction de repartition de loi extreme generalisee
- [gevfit](2_probability_distributions/gevfit.md) - Estimation des parametres de la loi extreme generalisee
- [gevinv](2_probability_distributions/gevinv.md) - Inverse de repartition de loi extreme generalisee
- [gevlike](2_probability_distributions/gevlike.md) - Oppose de la log-vraisemblance de la loi extreme generalisee
- [gevpdf](2_probability_distributions/gevpdf.md) - Densite de probabilite de loi extreme generalisee
- [gevrnd](2_probability_distributions/gevrnd.md) - Nombres aleatoires de loi extreme generalisee
- [gevstat](2_probability_distributions/gevstat.md) - Moyenne et variance de loi extreme generalisee
- [logncdf](2_probability_distributions/logncdf.md) - Fonction de repartition lognormale
- [lognfit](2_probability_distributions/lognfit.md) - Estimations des parametres lognormaux
- [logninv](2_probability_distributions/logninv.md) - Inverse de repartition lognormale
- [lognlike](2_probability_distributions/lognlike.md) - Log-vraisemblance negative lognormale
- [lognpdf](2_probability_distributions/lognpdf.md) - Densite de probabilite lognormale
- [lognrnd](2_probability_distributions/lognrnd.md) - Nombres aleatoires lognormaux
- [lognstat](2_probability_distributions/lognstat.md) - Moyenne et variance lognormales
- [nbincdf](2_probability_distributions/nbincdf.md) - Fonction de repartition binomiale negative
- [nbinfit](2_probability_distributions/nbinfit.md) - Estimation des parametres binomiaux negatifs
- [nbininv](2_probability_distributions/nbininv.md) - Inverse de repartition binomiale negative
- [nbinlike](2_probability_distributions/nbinlike.md) - Oppose de la log-vraisemblance binomiale negative
- [nbinpdf](2_probability_distributions/nbinpdf.md) - Probabilites binomiales negatives
- [nbinrnd](2_probability_distributions/nbinrnd.md) - Nombres aleatoires binomiaux negatifs
- [nbinstat](2_probability_distributions/nbinstat.md) - Moyenne et variance binomiales negatives
- [normcdf](2_probability_distributions/normcdf.md) - Fonction de repartition normale
- [normfit](2_probability_distributions/normfit.md) - Estimation de la moyenne et de l'ecart type normaux
- [norminv](2_probability_distributions/norminv.md) - Inverse de la fonction de repartition normale
- [normlike](2_probability_distributions/normlike.md) - Oppose de la log-vraisemblance normale
- [normpdf](2_probability_distributions/normpdf.md) - Densité de probabilité normale
- [normrnd](2_probability_distributions/normrnd.md) - Nombres aleatoires normaux
- [normstat](2_probability_distributions/normstat.md) - Moyenne et variance normales
- [poisscdf](2_probability_distributions/poisscdf.md) - Fonction de repartition de Poisson
- [poissfit](2_probability_distributions/poissfit.md) - Estimation du taux de Poisson
- [poissinv](2_probability_distributions/poissinv.md) - Fonction de repartition inverse de Poisson
- [poisslike](2_probability_distributions/poisslike.md) - Oppose de la log-vraisemblance de Poisson
- [poisspdf](2_probability_distributions/poisspdf.md) - Fonction de masse de Poisson
- [poissrnd](2_probability_distributions/poissrnd.md) - Nombres aleatoires de Poisson
- [poissstat](2_probability_distributions/poissstat.md) - Moyenne et variance Poisson
- [randsample](2_probability_distributions/randsample.md) - Echantillon aleatoire depuis une population.
- [raylcdf](2_probability_distributions/raylcdf.md) - Fonction de repartition Rayleigh
- [raylfit](2_probability_distributions/raylfit.md) - Estimation de l'echelle Rayleigh
- [raylinv](2_probability_distributions/raylinv.md) - Inverse de repartition Rayleigh
- [rayllike](2_probability_distributions/rayllike.md) - Log-vraisemblance negative Rayleigh
- [raylpdf](2_probability_distributions/raylpdf.md) - Densite de probabilite Rayleigh
- [raylrnd](2_probability_distributions/raylrnd.md) - Nombres aleatoires Rayleigh
- [raylstat](2_probability_distributions/raylstat.md) - Moyenne et variance Rayleigh
- [tcdf](2_probability_distributions/tcdf.md) - Fonction de repartition de Student t
- [tinv](2_probability_distributions/tinv.md) - Fonction de repartition inverse de Student t
- [tpdf](2_probability_distributions/tpdf.md) - Densite de probabilite de Student t
- [trnd](2_probability_distributions/trnd.md) - Nombres aleatoires Student t
- [tstat](2_probability_distributions/tstat.md) - Moyenne et variance Student t
- [unidcdf](2_probability_distributions/unidcdf.md) - Fonction de repartition uniforme discrete
- [unidfit](2_probability_distributions/unidfit.md) - Estimation du maximum uniforme discret
- [unidinv](2_probability_distributions/unidinv.md) - Inverse de repartition uniforme discrete
- [unidlike](2_probability_distributions/unidlike.md) - Oppose de la log-vraisemblance uniforme discrete
- [unidpdf](2_probability_distributions/unidpdf.md) - Probabilites de loi uniforme discrete
- [unidrnd](2_probability_distributions/unidrnd.md) - Nombres aleatoires uniformes discrets
- [unidstat](2_probability_distributions/unidstat.md) - Moyenne et variance uniformes discretes
- [unifcdf](2_probability_distributions/unifcdf.md) - Fonction de repartition uniforme continue
- [unifinv](2_probability_distributions/unifinv.md) - Fonction de repartition inverse uniforme continue
- [unifit](2_probability_distributions/unifit.md) - Estimations des parametres uniformes continus
- [uniflike](2_probability_distributions/uniflike.md) - Oppose de la log-vraisemblance uniforme continue
- [unifpdf](2_probability_distributions/unifpdf.md) - Densite de probabilite uniforme continue
- [unifrnd](2_probability_distributions/unifrnd.md) - Nombres aleatoires uniformes continus
- [unifstat](2_probability_distributions/unifstat.md) - Moyenne et variance uniformes continues
- [wblcdf](2_probability_distributions/wblcdf.md) - Fonction de repartition Weibull
- [wblfit](2_probability_distributions/wblfit.md) - Estimation des parametres de la loi Weibull
- [wblinv](2_probability_distributions/wblinv.md) - Inverse de la fonction de repartition Weibull
- [wbllike](2_probability_distributions/wbllike.md) - Oppose de la log-vraisemblance de la loi Weibull
- [wblpdf](2_probability_distributions/wblpdf.md) - Densite de probabilite Weibull
- [wblrnd](2_probability_distributions/wblrnd.md) - Nombres aleatoires Weibull
- [wblstat](2_probability_distributions/wblstat.md) - Moyenne et variance Weibull

## Tests d hypotheses


    
Tests statistiques pour ajustement de distribution, position, variance, rangs, independance et comparaisons.

  

### Functions

- [adtest](3_hypothesis_tests/adtest.md) - Test d'adequation d'Anderson-Darling.
- [ansaribradley](3_hypothesis_tests/ansaribradley.md) - Test d'Ansari-Bradley pour dispersion egale.
- [chi2gof](3_hypothesis_tests/chi2gof.md) - Test d'adequation du chi-carre.
- [fishertest](3_hypothesis_tests/fishertest.md) - Test exact de Fisher pour un tableau 2 par 2.
- [friedman](3_hypothesis_tests/friedman.md) - Test de Friedman pour donnees en blocs.
- [fsrftest](3_hypothesis_tests/fsrftest.md) - Classement des predicteurs avec des tests F de regression univaries.
- [jbtest](3_hypothesis_tests/jbtest.md) - Test de normalite de Jarque-Bera.
- [kruskalwallis](3_hypothesis_tests/kruskalwallis.md) - Analyse de variance de Kruskal-Wallis par rangs.
- [kstest](3_hypothesis_tests/kstest.md) - Test de Kolmogorov-Smirnov a un echantillon
- [kstest2](3_hypothesis_tests/kstest2.md) - Test de Kolmogorov-Smirnov a deux echantillons
- [lillietest](3_hypothesis_tests/lillietest.md) - Test d'adequation de Lilliefors.
- [ranksum](3_hypothesis_tests/ranksum.md) - Test de somme des rangs de Wilcoxon.
- [runstest](3_hypothesis_tests/runstest.md) - Test des runs pour le hasard.
- [signrank](3_hypothesis_tests/signrank.md) - Test des rangs signes de Wilcoxon.
- [signtest](3_hypothesis_tests/signtest.md) - Test des signes.
- [ttest](3_hypothesis_tests/ttest.md) - Test t a un echantillon ou apparie
- [ttest2](3_hypothesis_tests/ttest2.md) - Test t a deux echantillons
- [vartest](3_hypothesis_tests/vartest.md) - Test du chi-square pour une variance
- [vartest2](3_hypothesis_tests/vartest2.md) - Test F pour egalite des variances
- [ztest](3_hypothesis_tests/ztest.md) - Test z pour une moyenne avec ecart type connu

## ANOVA


    
Fonctions d analyse de variance.

  

### Functions

- [anova1](4_anova/anova1.md) - Analyse de variance a un facteur.
- [anova2](4_anova/anova2.md) - Analyse de variance a deux facteurs.

## Regression


    
Fonctions de regression, correlation et prediction supervisee.

  

### Functions

- [GeneralizedLinearModel](5_regression/GeneralizedLinearModel.md) - Modele de regression lineaire generalisee.
- [LinearModel](5_regression/LinearModel.md) - Modele de regression lineaire.
- [RegressionEnsemble](5_regression/RegressionEnsemble.md) - Modele d'ensemble pour la regression.
- [RegressionSVM](5_regression/RegressionSVM.md) - Modele de regression par machine a vecteurs de support.
- [RegressionTree](5_regression/RegressionTree.md) - Modele d'arbre de regression.
- [canoncorr](5_regression/canoncorr.md) - Analyse de correlation canonique.
- [compact](5_regression/compact.md) - Retourne un modele predictif compact.
- [fitensemble](5_regression/fitensemble.md) - Ajuste un modele d'ensemble avec la syntaxe historique.
- [fitglm](5_regression/fitglm.md) - Ajuste un modele de regression lineaire generalise.
- [fitlm](5_regression/fitlm.md) - Ajuste un modele de regression lineaire.
- [fitrensemble](5_regression/fitrensemble.md) - Ajuste un modele de regression d'ensemble.
- [fitrknn](5_regression/fitrknn.md) - Ajuste un modele de regression par k plus proches voisins.
- [fitrsvm](5_regression/fitrsvm.md) - Ajuste un modele de regression par machine a vecteurs de support.
- [fitrtree](5_regression/fitrtree.md) - Ajuste un arbre de regression.
- [lasso](5_regression/lasso.md) - Regularisation lasso et elastic net pour modeles lineaires.
- [partialcorr](5_regression/partialcorr.md) - Coefficients de correlation partielle lineaire ou de rang.
- [partialcorri](5_regression/partialcorri.md) - Coefficients de correlation partielle ajustes sur des variables internes.
- [predict](5_regression/predict.md) - Prédire des réponses ou des étiquettes de classe à partir d'un modèle ajusté.
- [regress](5_regression/regress.md) - Regression lineaire multiple.
- [regstats](5_regression/regstats.md) - Statistiques de diagnostic de regression.
- [ridge](5_regression/ridge.md) - Regression ridge.
- [robustfit](5_regression/robustfit.md) - Regression lineaire robuste.

## Classification


    
Fonctions de modeles de classification et aides pour donnees groupees.

  

### Functions

- [ClassificationDiscriminant](6_classification/ClassificationDiscriminant.md) - Modele de classification par analyse discriminante.
- [ClassificationECOC](6_classification/ClassificationECOC.md) - Modele de classification par codes correcteurs d'erreurs.
- [ClassificationEnsemble](6_classification/ClassificationEnsemble.md) - Modele d'ensemble pour la classification.
- [ClassificationKNN](6_classification/ClassificationKNN.md) - Modele de classification par k plus proches voisins.
- [ClassificationNaiveBayes](6_classification/ClassificationNaiveBayes.md) - Modele de classification naive Bayes.
- [ClassificationSVM](6_classification/ClassificationSVM.md) - Modele de classification par machine a vecteurs de support.
- [ClassificationTree](6_classification/ClassificationTree.md) - Modele d'arbre de classification.
- [dummyvar](6_classification/dummyvar.md) - Cree des variables indicatrices depuis des variables de groupe.
- [fitcdiscr](6_classification/fitcdiscr.md) - Ajuste un classifieur par analyse discriminante.
- [fitcecoc](6_classification/fitcecoc.md) - Ajuste un classifieur multiclasses par codes correcteurs d'erreurs.
- [fitcensemble](6_classification/fitcensemble.md) - Ajuste un classifieur d'ensemble.
- [fitcknn](6_classification/fitcknn.md) - Ajuste un classifieur par k plus proches voisins.
- [fitcnb](6_classification/fitcnb.md) - Ajuste un classifieur naive Bayes.
- [fitcsvm](6_classification/fitcsvm.md) - Ajuste un classifieur binaire par machine a vecteurs de support.
- [fitctree](6_classification/fitctree.md) - Ajuste un arbre de decision de classification.
- [grp2idx](6_classification/grp2idx.md) - Cree un vecteur d'indices depuis une variable de groupe.

## Regroupement et detection d anomalies


    
Fonctions d apprentissage non supervise, recherche de plus proches voisins, gestion des valeurs aberrantes et modeles de sequences.

  

### Functions

- [cluster](7_clustering_anomaly_detection/cluster.md) - Construire des classes depuis un arbre hierarchique.
- [clusterdata](7_clustering_anomaly_detection/clusterdata.md) - Regrouper les observations depuis les donnees.
- [dbscan](7_clustering_anomaly_detection/dbscan.md) - Regroupement spatial fonde sur la densite.
- [dendrogram](7_clustering_anomaly_detection/dendrogram.md) - Trace d'un dendrogramme pour un arbre de classification hierarchique.
- [evalclusters](7_clustering_anomaly_detection/evalclusters.md) - Evaluer des solutions de clustering.
- [filloutliers](7_clustering_anomaly_detection/filloutliers.md) - Detecte et remplace les valeurs aberrantes dans des donnees numeriques.
- [fitgmdist](7_clustering_anomaly_detection/fitgmdist.md) - Ajuster une distribution de melange gaussien.
- [gmdistribution](7_clustering_anomaly_detection/gmdistribution.md) - Distribution de melange gaussien.
- [grpstats](7_clustering_anomaly_detection/grpstats.md) - Statistiques de synthese par groupe.
- [hmmdecode](7_clustering_anomaly_detection/hmmdecode.md) - Probabilites posterieures des etats d'un modele de Markov cache discret.
- [hmmestimate](7_clustering_anomaly_detection/hmmestimate.md) - Estime les probabilites d'un modele de Markov cache discret avec etats connus.
- [hmmgenerate](7_clustering_anomaly_detection/hmmgenerate.md) - Genere une sequence de Markov cachee discrete.
- [hmmtrain](7_clustering_anomaly_detection/hmmtrain.md) - Entraine un modele de Markov cache discret.
- [hmmviterbi](7_clustering_anomaly_detection/hmmviterbi.md) - Chemin d'etats le plus probable pour un modele de Markov cache discret.
- [isoutlier](7_clustering_anomaly_detection/isoutlier.md) - Detecte les valeurs aberrantes dans des donnees numeriques.
- [kmeans](7_clustering_anomaly_detection/kmeans.md) - Classification k-means.
- [kmedoids](7_clustering_anomaly_detection/kmedoids.md) - Partitionner des donnees en groupes avec des medoides.
- [knnsearch](7_clustering_anomaly_detection/knnsearch.md) - Trouver les k plus proches voisins.
- [linkage](7_clustering_anomaly_detection/linkage.md) - Arbre de classification hierarchique ascendante.
- [mahal](7_clustering_anomaly_detection/mahal.md) - Distance de Mahalanobis au carre vers des echantillons de reference.
- [pdist](7_clustering_anomaly_detection/pdist.md) - Distances deux a deux entre observations.
- [pdist2](7_clustering_anomaly_detection/pdist2.md) - Distances deux a deux entre deux ensembles d'observations.
- [rangesearch](7_clustering_anomaly_detection/rangesearch.md) - Trouver tous les voisins dans une distance donnee.
- [rmoutliers](7_clustering_anomaly_detection/rmoutliers.md) - Detecte et supprime les valeurs aberrantes de donnees numeriques.
- [silhouette](7_clustering_anomaly_detection/silhouette.md) - Valeurs silhouette pour des donnees groupees.
- [spectralcluster](7_clustering_anomaly_detection/spectralcluster.md) - Clustering spectral.
- [squareform](7_clustering_anomaly_detection/squareform.md) - Convertir entre vecteur de distances condense et matrice carree de distances.

## Reduction de dimension et selection de variables


    
Fonctions de reduction de dimension, analyse factorielle, classement de variables et representations de faible rang.

  

### Functions

- [cmdscale](8_dimension_reduction_feature_selection/cmdscale.md) - Positionnement multidimensionnel classique.
- [factoran](8_dimension_reduction_feature_selection/factoran.md) - Analyse factorielle.
- [mdscale](8_dimension_reduction_feature_selection/mdscale.md) - Positionnement multidimensionnel non classique.
- [nnmf](8_dimension_reduction_feature_selection/nnmf.md) - Factorisation de matrice non negative.
- [pca](8_dimension_reduction_feature_selection/pca.md) - Analyse en composantes principales de donnees brutes.
- [pcacov](8_dimension_reduction_feature_selection/pcacov.md) - Analyse en composantes principales sur une matrice de covariance.
- [pcares](8_dimension_reduction_feature_selection/pcares.md) - Residus d'une analyse en composantes principales.
- [ppca](8_dimension_reduction_feature_selection/ppca.md) - Analyse en composantes principales probabiliste.
- [relieff](8_dimension_reduction_feature_selection/relieff.md) - Classement d'importance des predicteurs avec ReliefF.
- [rotatefactors](8_dimension_reduction_feature_selection/rotatefactors.md) - Rotation de charges factorielles.
- [sequentialfs](8_dimension_reduction_feature_selection/sequentialfs.md) - Selection sequentielle de variables avec un critere utilisateur.

## Plans d experiences


    
Fonctions pour plans d experiences et configuration de modeles.

  

### Functions

- [candexch](9_design_of_experiments/candexch.md) - Selection D-optimale de lignes depuis un ensemble candidat.
- [candgen](9_design_of_experiments/candgen.md) - Generer un ensemble candidat pour les plans.
- [cordexch](9_design_of_experiments/cordexch.md) - Plan D-optimal avec une interface de type echange de coordonnees.
- [daugment](9_design_of_experiments/daugment.md) - Augmenter un plan D-optimal.
- [rowexch](9_design_of_experiments/rowexch.md) - Plan D-optimal par echange de lignes.
- [statget](9_design_of_experiments/statget.md) - Acceder aux valeurs de champs dans les structures d'options statistiques.
- [statset](9_design_of_experiments/statset.md) - Creer ou modifier des structures d'options statistiques.
- [x2fx](9_design_of_experiments/x2fx.md) - Convertir des facteurs en matrice de plan.

