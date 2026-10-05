#import "nelson_help.typ": *

= Statistiques

Le module Statistiques fournit des outils pour analyser et resumer des donnees dans Nelson.

 Il comprend des fonctions pour calculer des mesures de tendance centrale, de variabilite, de correlation et des distributions de probabilites.

 Le module prend egalement en charge des structures avancees de synthese de donnees pour une estimation precise des quantiles, permettant une analyse statistique robuste et l'interpretation des jeux de donnees.

== Statistiques descriptives et visualisation

Fonctions pour resumer, explorer, classer et visualiser des donnees statistiques.

=== Functions

- #nlink(<statistics:1_descriptive_statistics_visualization.bootci>)[bootci]: Intervalle de confiance bootstrap.
- #nlink(<statistics:1_descriptive_statistics_visualization.bootstrp>)[bootstrp]: Echantillonnage bootstrap.
- #nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr]: Correlation lineaire ou de rang.
- #nlink(<statistics:1_descriptive_statistics_visualization.corrcoef>)[corrcoef]: Coefficients de corrélation
- #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov]: Covariance
- #nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab]: Tableau croise.
- #nlink(<statistics:1_descriptive_statistics_visualization.ecdf>)[ecdf]: Fonction de repartition empirique.
- #nlink(<statistics:1_descriptive_statistics_visualization.geomean>)[geomean]: Moyenne geometrique d'un jeu de donnees.
- #nlink(<statistics:1_descriptive_statistics_visualization.harmmean>)[harmmean]: Moyenne harmonique d'un jeu de donnees.
- #nlink(<statistics:1_descriptive_statistics_visualization.hist>)[hist]: Comptage des classes d'un histogramme.
- #nlink(<statistics:1_descriptive_statistics_visualization.histfit>)[histfit]: Histogramme avec courbe de distribution ajustee.
- #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr]: Écart interquartile.
- #nlink(<statistics:1_descriptive_statistics_visualization.jackknife>)[jackknife]: Statistiques jackknife.
- #nlink(<statistics:1_descriptive_statistics_visualization.ksdensity>)[ksdensity]: Estimation par lissage a noyau.
- #nlink(<statistics:1_descriptive_statistics_visualization.kurtosis>)[kurtosis]: Aplatissement d'un jeu de donnees.
- #nlink(<statistics:1_descriptive_statistics_visualization.mad>)[mad]: Ecart absolu moyen ou median.
- #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean]: Moyenne des éléments d'un tableau.
- #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median]: Valeur mediane des elements d'un tableau.
- #nlink(<statistics:1_descriptive_statistics_visualization.mode>)[mode]: Valeurs les plus frequentes.
- #nlink(<statistics:1_descriptive_statistics_visualization.moment>)[moment]: Moment centre d'un jeu de donnees.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmax>)[nanmax]: Maximum, en ignorant les valeurs NaN.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean]: Moyenne en ignorant les valeurs NaN.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian]: Mediane en ignorant les valeurs NaN.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmin>)[nanmin]: Minimum, en ignorant les valeurs NaN.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd]: Ecart type en ignorant les valeurs NaN.
- #nlink(<statistics:1_descriptive_statistics_visualization.nansum>)[nansum]: Somme, en ignorant les valeurs NaN.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar]: Variance en ignorant les valeurs NaN.
- #nlink(<statistics:1_descriptive_statistics_visualization.prctile>)[prctile]: Percentiles d'un jeu de données.
- #nlink(<statistics:1_descriptive_statistics_visualization.probplot>)[probplot]: Trace de probabilite.
- #nlink(<statistics:1_descriptive_statistics_visualization.qqplot>)[qqplot]: Trace quantile-quantile.
- #nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile]: Quantiles d'un jeu de données.
- #nlink(<statistics:1_descriptive_statistics_visualization.range>)[range]: Étendue des valeurs
- #nlink(<statistics:1_descriptive_statistics_visualization.skewness>)[skewness]: Asymetrie d'un jeu de donnees.
- #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std]: Écart type
- #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate]: Table de frequences.
- #nlink(<statistics:1_descriptive_statistics_visualization.tdigest>)[tdigest]: Structure de données t-digest pour une estimation précise des quantiles avec paramètres de compression configurables
- #nlink(<statistics:1_descriptive_statistics_visualization.tiedrank>)[tiedrank]: Rangs avec moyenne pour les ex aequo.
- #nlink(<statistics:1_descriptive_statistics_visualization.trimmean>)[trimmean]: Moyenne apres suppression des valeurs extremes.
- #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var]: Variance
- #nlink(<statistics:1_descriptive_statistics_visualization.zscore>)[zscore]: Scores z standardises.

== Distributions de probabilites

Fonctions de distribution pour densite, probabilite cumulee, probabilite inverse, ajustement, vraisemblance, tirage aleatoire et statistiques de synthese.

=== Functions

- #nlink(<statistics:2_probability_distributions.betacdf>)[betacdf]: Fonction de repartition beta
- #nlink(<statistics:2_probability_distributions.betafit>)[betafit]: Estimation des parametres beta
- #nlink(<statistics:2_probability_distributions.betainv>)[betainv]: Fonction de repartition inverse beta
- #nlink(<statistics:2_probability_distributions.betalike>)[betalike]: Oppose de la log-vraisemblance beta
- #nlink(<statistics:2_probability_distributions.betapdf>)[betapdf]: Densite de probabilite beta
- #nlink(<statistics:2_probability_distributions.betarnd>)[betarnd]: Nombres aleatoires beta
- #nlink(<statistics:2_probability_distributions.betastat>)[betastat]: Moyenne et variance beta
- #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf]: Fonction de repartition binomiale
- #nlink(<statistics:2_probability_distributions.binofit>)[binofit]: Estimation de probabilite binomiale
- #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv]: Fonction de repartition inverse binomiale
- #nlink(<statistics:2_probability_distributions.binolike>)[binolike]: Oppose de la log-vraisemblance binomiale
- #nlink(<statistics:2_probability_distributions.binopdf>)[binopdf]: Fonction de masse binomiale
- #nlink(<statistics:2_probability_distributions.binornd>)[binornd]: Nombres aleatoires binomiaux
- #nlink(<statistics:2_probability_distributions.binostat>)[binostat]: Moyenne et variance binomiales
- #nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf]: Fonction de repartition chi-square
- #nlink(<statistics:2_probability_distributions.chi2inv>)[chi2inv]: Inverse de la fonction de repartition chi-square
- #nlink(<statistics:2_probability_distributions.chi2pdf>)[chi2pdf]: Densite de probabilite chi-square
- #nlink(<statistics:2_probability_distributions.chi2rnd>)[chi2rnd]: Nombres aleatoires khi deux
- #nlink(<statistics:2_probability_distributions.chi2stat>)[chi2stat]: Moyenne et variance du khi deux
- #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf]: Fonction de repartition de la loi extreme value
- #nlink(<statistics:2_probability_distributions.evfit>)[evfit]: Estimation des parametres de la loi extreme value
- #nlink(<statistics:2_probability_distributions.evinv>)[evinv]: Inverse de la fonction de repartition de la loi extreme value
- #nlink(<statistics:2_probability_distributions.evlike>)[evlike]: Oppose de la log-vraisemblance de la loi extreme value
- #nlink(<statistics:2_probability_distributions.evpdf>)[evpdf]: Fonction de densite de la loi extreme value
- #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd]: Nombres aleatoires de loi extreme value
- #nlink(<statistics:2_probability_distributions.evstat>)[evstat]: Moyenne et variance de la loi extreme value
- #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf]: Fonction de repartition exponentielle
- #nlink(<statistics:2_probability_distributions.expfit>)[expfit]: Estimation de la moyenne exponentielle
- #nlink(<statistics:2_probability_distributions.expinv>)[expinv]: Fonction de repartition inverse exponentielle
- #nlink(<statistics:2_probability_distributions.explike>)[explike]: Oppose de la log-vraisemblance exponentielle
- #nlink(<statistics:2_probability_distributions.exppdf>)[exppdf]: Densite de probabilite exponentielle
- #nlink(<statistics:2_probability_distributions.exprnd>)[exprnd]: Nombres aleatoires exponentiels
- #nlink(<statistics:2_probability_distributions.expstat>)[expstat]: Moyenne et variance exponentielles
- #nlink(<statistics:2_probability_distributions.fcdf>)[fcdf]: Fonction de repartition F
- #nlink(<statistics:2_probability_distributions.finv>)[finv]: Fonction de repartition inverse F
- #nlink(<statistics:2_probability_distributions.fpdf>)[fpdf]: Densite de probabilite F
- #nlink(<statistics:2_probability_distributions.frnd>)[frnd]: Nombres aleatoires F
- #nlink(<statistics:2_probability_distributions.fstat>)[fstat]: Moyenne et variance F
- #nlink(<statistics:2_probability_distributions.gamcdf>)[gamcdf]: Fonction de repartition gamma
- #nlink(<statistics:2_probability_distributions.gamfit>)[gamfit]: Estimations des parametres gamma
- #nlink(<statistics:2_probability_distributions.gaminv>)[gaminv]: Fonction de repartition inverse gamma
- #nlink(<statistics:2_probability_distributions.gamlike>)[gamlike]: Log-vraisemblance negative gamma
- #nlink(<statistics:2_probability_distributions.gampdf>)[gampdf]: Densite de probabilite gamma
- #nlink(<statistics:2_probability_distributions.gamrnd>)[gamrnd]: Nombres aleatoires gamma
- #nlink(<statistics:2_probability_distributions.gamstat>)[gamstat]: Moyenne et variance gamma
- #nlink(<statistics:2_probability_distributions.geocdf>)[geocdf]: Fonction de repartition geometrique
- #nlink(<statistics:2_probability_distributions.geofit>)[geofit]: Estimation de probabilite geometrique
- #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv]: Inverse de la fonction de repartition geometrique
- #nlink(<statistics:2_probability_distributions.geolike>)[geolike]: Oppose de la log-vraisemblance geometrique
- #nlink(<statistics:2_probability_distributions.geopdf>)[geopdf]: Probabilite de la loi geometrique
- #nlink(<statistics:2_probability_distributions.geornd>)[geornd]: Nombres aleatoires geometriques
- #nlink(<statistics:2_probability_distributions.geostat>)[geostat]: Moyenne et variance geometriques
- #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf]: Fonction de repartition de loi extreme generalisee
- #nlink(<statistics:2_probability_distributions.gevfit>)[gevfit]: Estimation des parametres de la loi extreme generalisee
- #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv]: Inverse de repartition de loi extreme generalisee
- #nlink(<statistics:2_probability_distributions.gevlike>)[gevlike]: Oppose de la log-vraisemblance de la loi extreme generalisee
- #nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf]: Densite de probabilite de loi extreme generalisee
- #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd]: Nombres aleatoires de loi extreme generalisee
- #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat]: Moyenne et variance de loi extreme generalisee
- #nlink(<statistics:2_probability_distributions.logncdf>)[logncdf]: Fonction de repartition lognormale
- #nlink(<statistics:2_probability_distributions.lognfit>)[lognfit]: Estimations des parametres lognormaux
- #nlink(<statistics:2_probability_distributions.logninv>)[logninv]: Inverse de repartition lognormale
- #nlink(<statistics:2_probability_distributions.lognlike>)[lognlike]: Log-vraisemblance negative lognormale
- #nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf]: Densite de probabilite lognormale
- #nlink(<statistics:2_probability_distributions.lognrnd>)[lognrnd]: Nombres aleatoires lognormaux
- #nlink(<statistics:2_probability_distributions.lognstat>)[lognstat]: Moyenne et variance lognormales
- #nlink(<statistics:2_probability_distributions.nbincdf>)[nbincdf]: Fonction de repartition binomiale negative
- #nlink(<statistics:2_probability_distributions.nbinfit>)[nbinfit]: Estimation des parametres binomiaux negatifs
- #nlink(<statistics:2_probability_distributions.nbininv>)[nbininv]: Inverse de repartition binomiale negative
- #nlink(<statistics:2_probability_distributions.nbinlike>)[nbinlike]: Oppose de la log-vraisemblance binomiale negative
- #nlink(<statistics:2_probability_distributions.nbinpdf>)[nbinpdf]: Probabilites binomiales negatives
- #nlink(<statistics:2_probability_distributions.nbinrnd>)[nbinrnd]: Nombres aleatoires binomiaux negatifs
- #nlink(<statistics:2_probability_distributions.nbinstat>)[nbinstat]: Moyenne et variance binomiales negatives
- #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf]: Fonction de repartition normale
- #nlink(<statistics:2_probability_distributions.normfit>)[normfit]: Estimation de la moyenne et de l'ecart type normaux
- #nlink(<statistics:2_probability_distributions.norminv>)[norminv]: Inverse de la fonction de repartition normale
- #nlink(<statistics:2_probability_distributions.normlike>)[normlike]: Oppose de la log-vraisemblance normale
- #nlink(<statistics:2_probability_distributions.normpdf>)[normpdf]: Densité de probabilité normale
- #nlink(<statistics:2_probability_distributions.normrnd>)[normrnd]: Nombres aleatoires normaux
- #nlink(<statistics:2_probability_distributions.normstat>)[normstat]: Moyenne et variance normales
- #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf]: Fonction de repartition de Poisson
- #nlink(<statistics:2_probability_distributions.poissfit>)[poissfit]: Estimation du taux de Poisson
- #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv]: Fonction de repartition inverse de Poisson
- #nlink(<statistics:2_probability_distributions.poisslike>)[poisslike]: Oppose de la log-vraisemblance de Poisson
- #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf]: Fonction de masse de Poisson
- #nlink(<statistics:2_probability_distributions.poissrnd>)[poissrnd]: Nombres aleatoires de Poisson
- #nlink(<statistics:2_probability_distributions.poissstat>)[poissstat]: Moyenne et variance Poisson
- #nlink(<statistics:2_probability_distributions.randsample>)[randsample]: Echantillon aleatoire depuis une population.
- #nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf]: Fonction de repartition Rayleigh
- #nlink(<statistics:2_probability_distributions.raylfit>)[raylfit]: Estimation de l'echelle Rayleigh
- #nlink(<statistics:2_probability_distributions.raylinv>)[raylinv]: Inverse de repartition Rayleigh
- #nlink(<statistics:2_probability_distributions.rayllike>)[rayllike]: Log-vraisemblance negative Rayleigh
- #nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf]: Densite de probabilite Rayleigh
- #nlink(<statistics:2_probability_distributions.raylrnd>)[raylrnd]: Nombres aleatoires Rayleigh
- #nlink(<statistics:2_probability_distributions.raylstat>)[raylstat]: Moyenne et variance Rayleigh
- #nlink(<statistics:2_probability_distributions.tcdf>)[tcdf]: Fonction de repartition de Student t
- #nlink(<statistics:2_probability_distributions.tinv>)[tinv]: Fonction de repartition inverse de Student t
- #nlink(<statistics:2_probability_distributions.tpdf>)[tpdf]: Densite de probabilite de Student t
- #nlink(<statistics:2_probability_distributions.trnd>)[trnd]: Nombres aleatoires Student t
- #nlink(<statistics:2_probability_distributions.tstat>)[tstat]: Moyenne et variance Student t
- #nlink(<statistics:2_probability_distributions.unidcdf>)[unidcdf]: Fonction de repartition uniforme discrete
- #nlink(<statistics:2_probability_distributions.unidfit>)[unidfit]: Estimation du maximum uniforme discret
- #nlink(<statistics:2_probability_distributions.unidinv>)[unidinv]: Inverse de repartition uniforme discrete
- #nlink(<statistics:2_probability_distributions.unidlike>)[unidlike]: Oppose de la log-vraisemblance uniforme discrete
- #nlink(<statistics:2_probability_distributions.unidpdf>)[unidpdf]: Probabilites de loi uniforme discrete
- #nlink(<statistics:2_probability_distributions.unidrnd>)[unidrnd]: Nombres aleatoires uniformes discrets
- #nlink(<statistics:2_probability_distributions.unidstat>)[unidstat]: Moyenne et variance uniformes discretes
- #nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf]: Fonction de repartition uniforme continue
- #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv]: Fonction de repartition inverse uniforme continue
- #nlink(<statistics:2_probability_distributions.unifit>)[unifit]: Estimations des parametres uniformes continus
- #nlink(<statistics:2_probability_distributions.uniflike>)[uniflike]: Oppose de la log-vraisemblance uniforme continue
- #nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf]: Densite de probabilite uniforme continue
- #nlink(<statistics:2_probability_distributions.unifrnd>)[unifrnd]: Nombres aleatoires uniformes continus
- #nlink(<statistics:2_probability_distributions.unifstat>)[unifstat]: Moyenne et variance uniformes continues
- #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf]: Fonction de repartition Weibull
- #nlink(<statistics:2_probability_distributions.wblfit>)[wblfit]: Estimation des parametres de la loi Weibull
- #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv]: Inverse de la fonction de repartition Weibull
- #nlink(<statistics:2_probability_distributions.wbllike>)[wbllike]: Oppose de la log-vraisemblance de la loi Weibull
- #nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf]: Densite de probabilite Weibull
- #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd]: Nombres aleatoires Weibull
- #nlink(<statistics:2_probability_distributions.wblstat>)[wblstat]: Moyenne et variance Weibull

== Tests d hypotheses

Tests statistiques pour ajustement de distribution, position, variance, rangs, independance et comparaisons.

=== Functions

- #nlink(<statistics:3_hypothesis_tests.adtest>)[adtest]: Test d'adequation d'Anderson-Darling.
- #nlink(<statistics:3_hypothesis_tests.ansaribradley>)[ansaribradley]: Test d'Ansari-Bradley pour dispersion egale.
- #nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof]: Test d'adequation du chi-carre.
- #nlink(<statistics:3_hypothesis_tests.fishertest>)[fishertest]: Test exact de Fisher pour un tableau 2 par 2.
- #nlink(<statistics:3_hypothesis_tests.friedman>)[friedman]: Test de Friedman pour donnees en blocs.
- #nlink(<statistics:3_hypothesis_tests.fsrftest>)[fsrftest]: Classement des predicteurs avec des tests F de regression univaries.
- #nlink(<statistics:3_hypothesis_tests.jbtest>)[jbtest]: Test de normalite de Jarque-Bera.
- #nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis]: Analyse de variance de Kruskal-Wallis par rangs.
- #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest]: Test de Kolmogorov-Smirnov a un echantillon
- #nlink(<statistics:3_hypothesis_tests.kstest2>)[kstest2]: Test de Kolmogorov-Smirnov a deux echantillons
- #nlink(<statistics:3_hypothesis_tests.lillietest>)[lillietest]: Test d'adequation de Lilliefors.
- #nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum]: Test de somme des rangs de Wilcoxon.
- #nlink(<statistics:3_hypothesis_tests.runstest>)[runstest]: Test des runs pour le hasard.
- #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank]: Test des rangs signes de Wilcoxon.
- #nlink(<statistics:3_hypothesis_tests.signtest>)[signtest]: Test des signes.
- #nlink(<statistics:3_hypothesis_tests.ttest>)[ttest]: Test t a un echantillon ou apparie
- #nlink(<statistics:3_hypothesis_tests.ttest2>)[ttest2]: Test t a deux echantillons
- #nlink(<statistics:3_hypothesis_tests.vartest>)[vartest]: Test du chi-square pour une variance
- #nlink(<statistics:3_hypothesis_tests.vartest2>)[vartest2]: Test F pour egalite des variances
- #nlink(<statistics:3_hypothesis_tests.ztest>)[ztest]: Test z pour une moyenne avec ecart type connu

== ANOVA

Fonctions d analyse de variance.

=== Functions

- #nlink(<statistics:4_anova.anova1>)[anova1]: Analyse de variance a un facteur.
- #nlink(<statistics:4_anova.anova2>)[anova2]: Analyse de variance a deux facteurs.

== Regression

Fonctions de regression, correlation et prediction supervisee.

=== Functions

- #nlink(<statistics:5_regression.GeneralizedLinearModel>)[GeneralizedLinearModel]: Modele de regression lineaire generalisee.
- #nlink(<statistics:5_regression.LinearModel>)[LinearModel]: Modele de regression lineaire.
- #nlink(<statistics:5_regression.RegressionEnsemble>)[RegressionEnsemble]: Modele d'ensemble pour la regression.
- #nlink(<statistics:5_regression.RegressionSVM>)[RegressionSVM]: Modele de regression par machine a vecteurs de support.
- #nlink(<statistics:5_regression.RegressionTree>)[RegressionTree]: Modele d'arbre de regression.
- #nlink(<statistics:5_regression.canoncorr>)[canoncorr]: Analyse de correlation canonique.
- #nlink(<statistics:5_regression.compact>)[compact]: Retourne un modele predictif compact.
- #nlink(<statistics:5_regression.fitensemble>)[fitensemble]: Ajuste un modele d'ensemble avec la syntaxe historique.
- #nlink(<statistics:5_regression.fitglm>)[fitglm]: Ajuste un modele de regression lineaire generalise.
- #nlink(<statistics:5_regression.fitlm>)[fitlm]: Ajuste un modele de regression lineaire.
- #nlink(<statistics:5_regression.fitrensemble>)[fitrensemble]: Ajuste un modele de regression d'ensemble.
- #nlink(<statistics:5_regression.fitrknn>)[fitrknn]: Ajuste un modele de regression par k plus proches voisins.
- #nlink(<statistics:5_regression.fitrsvm>)[fitrsvm]: Ajuste un modele de regression par machine a vecteurs de support.
- #nlink(<statistics:5_regression.fitrtree>)[fitrtree]: Ajuste un arbre de regression.
- #nlink(<statistics:5_regression.lasso>)[lasso]: Regularisation lasso et elastic net pour modeles lineaires.
- #nlink(<statistics:5_regression.partialcorr>)[partialcorr]: Coefficients de correlation partielle lineaire ou de rang.
- #nlink(<statistics:5_regression.partialcorri>)[partialcorri]: Coefficients de correlation partielle ajustes sur des variables internes.
- #nlink(<statistics:5_regression.predict>)[predict]: Prédire des réponses ou des étiquettes de classe à partir d'un modèle ajusté.
- #nlink(<statistics:5_regression.regress>)[regress]: Regression lineaire multiple.
- #nlink(<statistics:5_regression.regstats>)[regstats]: Statistiques de diagnostic de regression.
- #nlink(<statistics:5_regression.ridge>)[ridge]: Regression ridge.
- #nlink(<statistics:5_regression.robustfit>)[robustfit]: Regression lineaire robuste.

== Classification

Fonctions de modeles de classification et aides pour donnees groupees.

=== Functions

- #nlink(<statistics:6_classification.ClassificationDiscriminant>)[ClassificationDiscriminant]: Modele de classification par analyse discriminante.
- #nlink(<statistics:6_classification.ClassificationECOC>)[ClassificationECOC]: Modele de classification par codes correcteurs d'erreurs.
- #nlink(<statistics:6_classification.ClassificationEnsemble>)[ClassificationEnsemble]: Modele d'ensemble pour la classification.
- #nlink(<statistics:6_classification.ClassificationKNN>)[ClassificationKNN]: Modele de classification par k plus proches voisins.
- #nlink(<statistics:6_classification.ClassificationNaiveBayes>)[ClassificationNaiveBayes]: Modele de classification naive Bayes.
- #nlink(<statistics:6_classification.ClassificationSVM>)[ClassificationSVM]: Modele de classification par machine a vecteurs de support.
- #nlink(<statistics:6_classification.ClassificationTree>)[ClassificationTree]: Modele d'arbre de classification.
- #nlink(<statistics:6_classification.dummyvar>)[dummyvar]: Cree des variables indicatrices depuis des variables de groupe.
- #nlink(<statistics:6_classification.fitcdiscr>)[fitcdiscr]: Ajuste un classifieur par analyse discriminante.
- #nlink(<statistics:6_classification.fitcecoc>)[fitcecoc]: Ajuste un classifieur multiclasses par codes correcteurs d'erreurs.
- #nlink(<statistics:6_classification.fitcensemble>)[fitcensemble]: Ajuste un classifieur d'ensemble.
- #nlink(<statistics:6_classification.fitcknn>)[fitcknn]: Ajuste un classifieur par k plus proches voisins.
- #nlink(<statistics:6_classification.fitcnb>)[fitcnb]: Ajuste un classifieur naive Bayes.
- #nlink(<statistics:6_classification.fitcsvm>)[fitcsvm]: Ajuste un classifieur binaire par machine a vecteurs de support.
- #nlink(<statistics:6_classification.fitctree>)[fitctree]: Ajuste un arbre de decision de classification.
- #nlink(<statistics:6_classification.grp2idx>)[grp2idx]: Cree un vecteur d'indices depuis une variable de groupe.

== Regroupement et detection d anomalies

Fonctions d apprentissage non supervise, recherche de plus proches voisins, gestion des valeurs aberrantes et modeles de sequences.

=== Functions

- #nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster]: Construire des classes depuis un arbre hierarchique.
- #nlink(<statistics:7_clustering_anomaly_detection.clusterdata>)[clusterdata]: Regrouper les observations depuis les donnees.
- #nlink(<statistics:7_clustering_anomaly_detection.dbscan>)[dbscan]: Regroupement spatial fonde sur la densite.
- #nlink(<statistics:7_clustering_anomaly_detection.dendrogram>)[dendrogram]: Trace d'un dendrogramme pour un arbre de classification hierarchique.
- #nlink(<statistics:7_clustering_anomaly_detection.evalclusters>)[evalclusters]: Evaluer des solutions de clustering.
- #nlink(<statistics:7_clustering_anomaly_detection.filloutliers>)[filloutliers]: Detecte et remplace les valeurs aberrantes dans des donnees numeriques.
- #nlink(<statistics:7_clustering_anomaly_detection.fitgmdist>)[fitgmdist]: Ajuster une distribution de melange gaussien.
- #nlink(<statistics:7_clustering_anomaly_detection.gmdistribution>)[gmdistribution]: Distribution de melange gaussien.
- #nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats]: Statistiques de synthese par groupe.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode]: Probabilites posterieures des etats d'un modele de Markov cache discret.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmestimate>)[hmmestimate]: Estime les probabilites d'un modele de Markov cache discret avec etats connus.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmgenerate>)[hmmgenerate]: Genere une sequence de Markov cachee discrete.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmtrain>)[hmmtrain]: Entraine un modele de Markov cache discret.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmviterbi>)[hmmviterbi]: Chemin d'etats le plus probable pour un modele de Markov cache discret.
- #nlink(<statistics:7_clustering_anomaly_detection.isoutlier>)[isoutlier]: Detecte les valeurs aberrantes dans des donnees numeriques.
- #nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans]: Classification k-means.
- #nlink(<statistics:7_clustering_anomaly_detection.kmedoids>)[kmedoids]: Partitionner des donnees en groupes avec des medoides.
- #nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch]: Trouver les k plus proches voisins.
- #nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage]: Arbre de classification hierarchique ascendante.
- #nlink(<statistics:7_clustering_anomaly_detection.mahal>)[mahal]: Distance de Mahalanobis au carre vers des echantillons de reference.
- #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist]: Distances deux a deux entre observations.
- #nlink(<statistics:7_clustering_anomaly_detection.pdist2>)[pdist2]: Distances deux a deux entre deux ensembles d'observations.
- #nlink(<statistics:7_clustering_anomaly_detection.rangesearch>)[rangesearch]: Trouver tous les voisins dans une distance donnee.
- #nlink(<statistics:7_clustering_anomaly_detection.rmoutliers>)[rmoutliers]: Detecte et supprime les valeurs aberrantes de donnees numeriques.
- #nlink(<statistics:7_clustering_anomaly_detection.silhouette>)[silhouette]: Valeurs silhouette pour des donnees groupees.
- #nlink(<statistics:7_clustering_anomaly_detection.spectralcluster>)[spectralcluster]: Clustering spectral.
- #nlink(<statistics:7_clustering_anomaly_detection.squareform>)[squareform]: Convertir entre vecteur de distances condense et matrice carree de distances.

== Reduction de dimension et selection de variables

Fonctions de reduction de dimension, analyse factorielle, classement de variables et representations de faible rang.

=== Functions

- #nlink(<statistics:8_dimension_reduction_feature_selection.cmdscale>)[cmdscale]: Positionnement multidimensionnel classique.
- #nlink(<statistics:8_dimension_reduction_feature_selection.factoran>)[factoran]: Analyse factorielle.
- #nlink(<statistics:8_dimension_reduction_feature_selection.mdscale>)[mdscale]: Positionnement multidimensionnel non classique.
- #nlink(<statistics:8_dimension_reduction_feature_selection.nnmf>)[nnmf]: Factorisation de matrice non negative.
- #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca]: Analyse en composantes principales de donnees brutes.
- #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov]: Analyse en composantes principales sur une matrice de covariance.
- #nlink(<statistics:8_dimension_reduction_feature_selection.pcares>)[pcares]: Residus d'une analyse en composantes principales.
- #nlink(<statistics:8_dimension_reduction_feature_selection.ppca>)[ppca]: Analyse en composantes principales probabiliste.
- #nlink(<statistics:8_dimension_reduction_feature_selection.relieff>)[relieff]: Classement d'importance des predicteurs avec ReliefF.
- #nlink(<statistics:8_dimension_reduction_feature_selection.rotatefactors>)[rotatefactors]: Rotation de charges factorielles.
- #nlink(<statistics:8_dimension_reduction_feature_selection.sequentialfs>)[sequentialfs]: Selection sequentielle de variables avec un critere utilisateur.

== Plans d experiences

Fonctions pour plans d experiences et configuration de modeles.

=== Functions

- #nlink(<statistics:9_design_of_experiments.candexch>)[candexch]: Selection D-optimale de lignes depuis un ensemble candidat.
- #nlink(<statistics:9_design_of_experiments.candgen>)[candgen]: Generer un ensemble candidat pour les plans.
- #nlink(<statistics:9_design_of_experiments.cordexch>)[cordexch]: Plan D-optimal avec une interface de type echange de coordonnees.
- #nlink(<statistics:9_design_of_experiments.daugment>)[daugment]: Augmenter un plan D-optimal.
- #nlink(<statistics:9_design_of_experiments.rowexch>)[rowexch]: Plan D-optimal par echange de lignes.
- #nlink(<statistics:9_design_of_experiments.statget>)[statget]: Acceder aux valeurs de champs dans les structures d'options statistiques.
- #nlink(<statistics:9_design_of_experiments.statset>)[statset]: Creer ou modifier des structures d'options statistiques.
- #nlink(<statistics:9_design_of_experiments.x2fx>)[x2fx]: Convertir des facteurs en matrice de plan.


#nested[
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/bootci.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/bootstrp.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/corr.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/corrcoef.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/cov.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/crosstab.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/ecdf.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/geomean.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/harmmean.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/hist.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/histfit.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/iqr.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/jackknife.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/ksdensity.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/kurtosis.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/mad.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/mean.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/median.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/mode.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/moment.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/nanmax.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/nanmean.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/nanmedian.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/nanmin.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/nanstd.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/nansum.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/nanvar.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/prctile.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/probplot.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/qqplot.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/quantile.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/range.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/skewness.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/std.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/tabulate.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/tdigest.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/tiedrank.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/trimmean.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/var.typ"
#pagebreak(weak: true)
#include "1_descriptive_statistics_visualization/zscore.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/betacdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/betafit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/betainv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/betalike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/betapdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/betarnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/betastat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/binocdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/binofit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/binoinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/binolike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/binopdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/binornd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/binostat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/chi2cdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/chi2inv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/chi2pdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/chi2rnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/chi2stat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/evcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/evfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/evinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/evlike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/evpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/evrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/evstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/expcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/expfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/expinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/explike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/exppdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/exprnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/expstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/fcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/finv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/fpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/frnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/fstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gamcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gamfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gaminv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gamlike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gampdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gamrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gamstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/geocdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/geofit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/geoinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/geolike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/geopdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/geornd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/geostat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gevcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gevfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gevinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gevlike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gevpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gevrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/gevstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/logncdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/lognfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/logninv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/lognlike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/lognpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/lognrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/lognstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/nbincdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/nbinfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/nbininv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/nbinlike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/nbinpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/nbinrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/nbinstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/normcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/normfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/norminv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/normlike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/normpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/normrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/normstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/poisscdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/poissfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/poissinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/poisslike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/poisspdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/poissrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/poissstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/randsample.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/raylcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/raylfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/raylinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/rayllike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/raylpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/raylrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/raylstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/tcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/tinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/tpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/trnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/tstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unidcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unidfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unidinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unidlike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unidpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unidrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unidstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unifcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unifinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unifit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/uniflike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unifpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unifrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/unifstat.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/wblcdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/wblfit.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/wblinv.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/wbllike.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/wblpdf.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/wblrnd.typ"
#pagebreak(weak: true)
#include "2_probability_distributions/wblstat.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/adtest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/ansaribradley.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/chi2gof.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/fishertest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/friedman.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/fsrftest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/jbtest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/kruskalwallis.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/kstest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/kstest2.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/lillietest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/ranksum.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/runstest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/signrank.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/signtest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/ttest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/ttest2.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/vartest.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/vartest2.typ"
#pagebreak(weak: true)
#include "3_hypothesis_tests/ztest.typ"
#pagebreak(weak: true)
#include "4_anova/anova1.typ"
#pagebreak(weak: true)
#include "4_anova/anova2.typ"
#pagebreak(weak: true)
#include "5_regression/GeneralizedLinearModel.typ"
#pagebreak(weak: true)
#include "5_regression/LinearModel.typ"
#pagebreak(weak: true)
#include "5_regression/RegressionEnsemble.typ"
#pagebreak(weak: true)
#include "5_regression/RegressionSVM.typ"
#pagebreak(weak: true)
#include "5_regression/RegressionTree.typ"
#pagebreak(weak: true)
#include "5_regression/canoncorr.typ"
#pagebreak(weak: true)
#include "5_regression/compact.typ"
#pagebreak(weak: true)
#include "5_regression/fitensemble.typ"
#pagebreak(weak: true)
#include "5_regression/fitglm.typ"
#pagebreak(weak: true)
#include "5_regression/fitlm.typ"
#pagebreak(weak: true)
#include "5_regression/fitrensemble.typ"
#pagebreak(weak: true)
#include "5_regression/fitrknn.typ"
#pagebreak(weak: true)
#include "5_regression/fitrsvm.typ"
#pagebreak(weak: true)
#include "5_regression/fitrtree.typ"
#pagebreak(weak: true)
#include "5_regression/lasso.typ"
#pagebreak(weak: true)
#include "5_regression/partialcorr.typ"
#pagebreak(weak: true)
#include "5_regression/partialcorri.typ"
#pagebreak(weak: true)
#include "5_regression/predict.typ"
#pagebreak(weak: true)
#include "5_regression/regress.typ"
#pagebreak(weak: true)
#include "5_regression/regstats.typ"
#pagebreak(weak: true)
#include "5_regression/ridge.typ"
#pagebreak(weak: true)
#include "5_regression/robustfit.typ"
#pagebreak(weak: true)
#include "6_classification/ClassificationDiscriminant.typ"
#pagebreak(weak: true)
#include "6_classification/ClassificationECOC.typ"
#pagebreak(weak: true)
#include "6_classification/ClassificationEnsemble.typ"
#pagebreak(weak: true)
#include "6_classification/ClassificationKNN.typ"
#pagebreak(weak: true)
#include "6_classification/ClassificationNaiveBayes.typ"
#pagebreak(weak: true)
#include "6_classification/ClassificationSVM.typ"
#pagebreak(weak: true)
#include "6_classification/ClassificationTree.typ"
#pagebreak(weak: true)
#include "6_classification/dummyvar.typ"
#pagebreak(weak: true)
#include "6_classification/fitcdiscr.typ"
#pagebreak(weak: true)
#include "6_classification/fitcecoc.typ"
#pagebreak(weak: true)
#include "6_classification/fitcensemble.typ"
#pagebreak(weak: true)
#include "6_classification/fitcknn.typ"
#pagebreak(weak: true)
#include "6_classification/fitcnb.typ"
#pagebreak(weak: true)
#include "6_classification/fitcsvm.typ"
#pagebreak(weak: true)
#include "6_classification/fitctree.typ"
#pagebreak(weak: true)
#include "6_classification/grp2idx.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/cluster.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/clusterdata.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/dbscan.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/dendrogram.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/evalclusters.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/filloutliers.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/fitgmdist.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/gmdistribution.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/grpstats.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/hmmdecode.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/hmmestimate.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/hmmgenerate.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/hmmtrain.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/hmmviterbi.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/isoutlier.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/kmeans.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/kmedoids.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/knnsearch.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/linkage.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/mahal.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/pdist.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/pdist2.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/rangesearch.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/rmoutliers.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/silhouette.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/spectralcluster.typ"
#pagebreak(weak: true)
#include "7_clustering_anomaly_detection/squareform.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/cmdscale.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/factoran.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/mdscale.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/nnmf.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/pca.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/pcacov.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/pcares.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/ppca.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/relieff.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/rotatefactors.typ"
#pagebreak(weak: true)
#include "8_dimension_reduction_feature_selection/sequentialfs.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/candexch.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/candgen.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/cordexch.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/daugment.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/rowexch.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/statget.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/statset.typ"
#pagebreak(weak: true)
#include "9_design_of_experiments/x2fx.typ"
]
