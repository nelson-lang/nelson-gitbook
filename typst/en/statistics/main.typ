#import "nelson_help.typ": *

= Statistics

The Statistics module provides tools for analyzing and summarizing data in Nelson.

 It includes functions for computing measures of central tendency, variability, correlation, and probability distributions.

 The module also supports advanced data summarization structures for accurate quantile estimation, enabling robust statistical analysis and interpretation of datasets.

== Descriptive Statistics and Visualization

Functions for summarizing, exploring, ranking, and visualizing statistical data.

=== Functions

- #nlink(<statistics:1_descriptive_statistics_visualization.bootci>)[bootci]: Bootstrap confidence interval.
- #nlink(<statistics:1_descriptive_statistics_visualization.bootstrp>)[bootstrp]: Bootstrap sampling.
- #nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr]: Linear or rank correlation.
- #nlink(<statistics:1_descriptive_statistics_visualization.corrcoef>)[corrcoef]: Correlation coefficients
- #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov]: Covariance
- #nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab]: Cross-tabulation.
- #nlink(<statistics:1_descriptive_statistics_visualization.ecdf>)[ecdf]: Empirical cumulative distribution function.
- #nlink(<statistics:1_descriptive_statistics_visualization.geomean>)[geomean]: Geometric mean of a data set.
- #nlink(<statistics:1_descriptive_statistics_visualization.harmmean>)[harmmean]: Harmonic mean of a data set.
- #nlink(<statistics:1_descriptive_statistics_visualization.hist>)[hist]: Histogram bin counts.
- #nlink(<statistics:1_descriptive_statistics_visualization.histfit>)[histfit]: Histogram with fitted distribution curve.
- #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr]: Interquartile range.
- #nlink(<statistics:1_descriptive_statistics_visualization.jackknife>)[jackknife]: Jackknife statistics.
- #nlink(<statistics:1_descriptive_statistics_visualization.ksdensity>)[ksdensity]: Kernel smoothing function estimate.
- #nlink(<statistics:1_descriptive_statistics_visualization.kurtosis>)[kurtosis]: Kurtosis of a data set.
- #nlink(<statistics:1_descriptive_statistics_visualization.mad>)[mad]: Mean or median absolute deviation.
- #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean]: Mean of array elements.
- #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median]: Median value of array elements.
- #nlink(<statistics:1_descriptive_statistics_visualization.mode>)[mode]: Most frequent values.
- #nlink(<statistics:1_descriptive_statistics_visualization.moment>)[moment]: Central moment of a data set.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmax>)[nanmax]: Maximum, ignoring NaN values.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean]: Mean, ignoring NaN values.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian]: Median, ignoring NaN values.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanmin>)[nanmin]: Minimum, ignoring NaN values.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd]: Standard deviation, ignoring NaN values.
- #nlink(<statistics:1_descriptive_statistics_visualization.nansum>)[nansum]: Sum, ignoring NaN values.
- #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar]: Variance, ignoring NaN values.
- #nlink(<statistics:1_descriptive_statistics_visualization.prctile>)[prctile]: Percentiles of a data set.
- #nlink(<statistics:1_descriptive_statistics_visualization.probplot>)[probplot]: Probability plot.
- #nlink(<statistics:1_descriptive_statistics_visualization.qqplot>)[qqplot]: Quantile-quantile plot.
- #nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile]: Quantiles of a data set.
- #nlink(<statistics:1_descriptive_statistics_visualization.range>)[range]: Range of values.
- #nlink(<statistics:1_descriptive_statistics_visualization.skewness>)[skewness]: Skewness of a data set.
- #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std]: Standard deviation
- #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate]: Frequency table.
- #nlink(<statistics:1_descriptive_statistics_visualization.tdigest>)[tdigest]: t-digest algorithm data structure for accurate quantile estimation with configurable compression parameters
- #nlink(<statistics:1_descriptive_statistics_visualization.tiedrank>)[tiedrank]: Ranks with average values for ties.
- #nlink(<statistics:1_descriptive_statistics_visualization.trimmean>)[trimmean]: Mean after trimming extreme values.
- #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var]: Variance
- #nlink(<statistics:1_descriptive_statistics_visualization.zscore>)[zscore]: Standardized z-scores.

== Probability Distributions

Distribution functions for density, cumulative probability, inverse probability, fitting, likelihood, random sampling, and summary statistics.

=== Functions

- #nlink(<statistics:2_probability_distributions.betacdf>)[betacdf]: Beta cumulative distribution function
- #nlink(<statistics:2_probability_distributions.betafit>)[betafit]: Beta parameter estimates
- #nlink(<statistics:2_probability_distributions.betainv>)[betainv]: Beta inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.betalike>)[betalike]: Beta negative log-likelihood
- #nlink(<statistics:2_probability_distributions.betapdf>)[betapdf]: Beta probability density function
- #nlink(<statistics:2_probability_distributions.betarnd>)[betarnd]: Beta random numbers
- #nlink(<statistics:2_probability_distributions.betastat>)[betastat]: Beta mean and variance
- #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf]: Binomial cumulative distribution function
- #nlink(<statistics:2_probability_distributions.binofit>)[binofit]: Binomial probability estimate
- #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv]: Binomial inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.binolike>)[binolike]: Binomial negative log-likelihood
- #nlink(<statistics:2_probability_distributions.binopdf>)[binopdf]: Binomial probability density function
- #nlink(<statistics:2_probability_distributions.binornd>)[binornd]: Binomial random numbers
- #nlink(<statistics:2_probability_distributions.binostat>)[binostat]: Binomial mean and variance
- #nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf]: Chi-square cumulative distribution function
- #nlink(<statistics:2_probability_distributions.chi2inv>)[chi2inv]: Chi-square inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.chi2pdf>)[chi2pdf]: Chi-square probability density function
- #nlink(<statistics:2_probability_distributions.chi2rnd>)[chi2rnd]: Chi-square random numbers
- #nlink(<statistics:2_probability_distributions.chi2stat>)[chi2stat]: Chi-square mean and variance
- #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf]: Extreme value cumulative distribution function
- #nlink(<statistics:2_probability_distributions.evfit>)[evfit]: Extreme value parameter estimates
- #nlink(<statistics:2_probability_distributions.evinv>)[evinv]: Extreme value inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.evlike>)[evlike]: Extreme value negative log-likelihood
- #nlink(<statistics:2_probability_distributions.evpdf>)[evpdf]: Extreme value probability density function
- #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd]: Extreme value random numbers
- #nlink(<statistics:2_probability_distributions.evstat>)[evstat]: Extreme value mean and variance
- #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf]: Exponential cumulative distribution function
- #nlink(<statistics:2_probability_distributions.expfit>)[expfit]: Exponential mean estimate
- #nlink(<statistics:2_probability_distributions.expinv>)[expinv]: Exponential inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.explike>)[explike]: Exponential negative log-likelihood
- #nlink(<statistics:2_probability_distributions.exppdf>)[exppdf]: Exponential probability density function
- #nlink(<statistics:2_probability_distributions.exprnd>)[exprnd]: Exponential random numbers
- #nlink(<statistics:2_probability_distributions.expstat>)[expstat]: Exponential mean and variance
- #nlink(<statistics:2_probability_distributions.fcdf>)[fcdf]: F cumulative distribution function
- #nlink(<statistics:2_probability_distributions.finv>)[finv]: F inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.fpdf>)[fpdf]: F probability density function
- #nlink(<statistics:2_probability_distributions.frnd>)[frnd]: F random numbers
- #nlink(<statistics:2_probability_distributions.fstat>)[fstat]: F mean and variance
- #nlink(<statistics:2_probability_distributions.gamcdf>)[gamcdf]: Gamma cumulative distribution function
- #nlink(<statistics:2_probability_distributions.gamfit>)[gamfit]: Gamma parameter estimates
- #nlink(<statistics:2_probability_distributions.gaminv>)[gaminv]: Gamma inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.gamlike>)[gamlike]: Gamma negative log-likelihood
- #nlink(<statistics:2_probability_distributions.gampdf>)[gampdf]: Gamma probability density function
- #nlink(<statistics:2_probability_distributions.gamrnd>)[gamrnd]: Gamma random numbers
- #nlink(<statistics:2_probability_distributions.gamstat>)[gamstat]: Gamma mean and variance
- #nlink(<statistics:2_probability_distributions.geocdf>)[geocdf]: Geometric cumulative distribution function
- #nlink(<statistics:2_probability_distributions.geofit>)[geofit]: Geometric probability estimate
- #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv]: Geometric inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.geolike>)[geolike]: Geometric negative log-likelihood
- #nlink(<statistics:2_probability_distributions.geopdf>)[geopdf]: Geometric probability density function
- #nlink(<statistics:2_probability_distributions.geornd>)[geornd]: Geometric random numbers
- #nlink(<statistics:2_probability_distributions.geostat>)[geostat]: Geometric mean and variance
- #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf]: Generalized extreme value cumulative distribution function
- #nlink(<statistics:2_probability_distributions.gevfit>)[gevfit]: Generalized extreme value parameter estimates
- #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv]: Generalized extreme value inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.gevlike>)[gevlike]: Generalized extreme value negative log-likelihood
- #nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf]: Generalized extreme value probability density function
- #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd]: Generalized extreme value random numbers
- #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat]: Generalized extreme value mean and variance
- #nlink(<statistics:2_probability_distributions.logncdf>)[logncdf]: Lognormal cumulative distribution function
- #nlink(<statistics:2_probability_distributions.lognfit>)[lognfit]: Lognormal parameter estimates
- #nlink(<statistics:2_probability_distributions.logninv>)[logninv]: Lognormal inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.lognlike>)[lognlike]: Lognormal negative log-likelihood
- #nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf]: Lognormal probability density function
- #nlink(<statistics:2_probability_distributions.lognrnd>)[lognrnd]: Lognormal random numbers
- #nlink(<statistics:2_probability_distributions.lognstat>)[lognstat]: Lognormal mean and variance
- #nlink(<statistics:2_probability_distributions.nbincdf>)[nbincdf]: Negative binomial cumulative distribution function
- #nlink(<statistics:2_probability_distributions.nbinfit>)[nbinfit]: Negative binomial parameter estimates
- #nlink(<statistics:2_probability_distributions.nbininv>)[nbininv]: Negative binomial inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.nbinlike>)[nbinlike]: Negative binomial negative log-likelihood
- #nlink(<statistics:2_probability_distributions.nbinpdf>)[nbinpdf]: Negative binomial probability density function
- #nlink(<statistics:2_probability_distributions.nbinrnd>)[nbinrnd]: Negative binomial random numbers
- #nlink(<statistics:2_probability_distributions.nbinstat>)[nbinstat]: Negative binomial mean and variance
- #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf]: Normal cumulative distribution function
- #nlink(<statistics:2_probability_distributions.normfit>)[normfit]: Normal mean and standard deviation estimates
- #nlink(<statistics:2_probability_distributions.norminv>)[norminv]: Normal inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.normlike>)[normlike]: Normal negative log-likelihood
- #nlink(<statistics:2_probability_distributions.normpdf>)[normpdf]: Normal probability density function
- #nlink(<statistics:2_probability_distributions.normrnd>)[normrnd]: Normal random numbers
- #nlink(<statistics:2_probability_distributions.normstat>)[normstat]: Normal mean and variance
- #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf]: Poisson cumulative distribution function
- #nlink(<statistics:2_probability_distributions.poissfit>)[poissfit]: Poisson rate estimate
- #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv]: Poisson inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.poisslike>)[poisslike]: Poisson negative log-likelihood
- #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf]: Poisson probability density function
- #nlink(<statistics:2_probability_distributions.poissrnd>)[poissrnd]: Poisson random numbers
- #nlink(<statistics:2_probability_distributions.poissstat>)[poissstat]: Poisson mean and variance
- #nlink(<statistics:2_probability_distributions.randsample>)[randsample]: Random sample from a population.
- #nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf]: Rayleigh cumulative distribution function
- #nlink(<statistics:2_probability_distributions.raylfit>)[raylfit]: Rayleigh scale estimate
- #nlink(<statistics:2_probability_distributions.raylinv>)[raylinv]: Rayleigh inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.rayllike>)[rayllike]: Rayleigh negative log-likelihood
- #nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf]: Rayleigh probability density function
- #nlink(<statistics:2_probability_distributions.raylrnd>)[raylrnd]: Rayleigh random numbers
- #nlink(<statistics:2_probability_distributions.raylstat>)[raylstat]: Rayleigh mean and variance
- #nlink(<statistics:2_probability_distributions.tcdf>)[tcdf]: Student t cumulative distribution function
- #nlink(<statistics:2_probability_distributions.tinv>)[tinv]: Student t inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.tpdf>)[tpdf]: Student t probability density function
- #nlink(<statistics:2_probability_distributions.trnd>)[trnd]: Student t random numbers
- #nlink(<statistics:2_probability_distributions.tstat>)[tstat]: Student t mean and variance
- #nlink(<statistics:2_probability_distributions.unidcdf>)[unidcdf]: Discrete uniform cumulative distribution function
- #nlink(<statistics:2_probability_distributions.unidfit>)[unidfit]: Discrete uniform maximum estimate
- #nlink(<statistics:2_probability_distributions.unidinv>)[unidinv]: Discrete uniform inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.unidlike>)[unidlike]: Discrete uniform negative log-likelihood
- #nlink(<statistics:2_probability_distributions.unidpdf>)[unidpdf]: Discrete uniform probability density function
- #nlink(<statistics:2_probability_distributions.unidrnd>)[unidrnd]: Discrete uniform random numbers
- #nlink(<statistics:2_probability_distributions.unidstat>)[unidstat]: Discrete uniform mean and variance
- #nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf]: Continuous uniform cumulative distribution function
- #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv]: Continuous uniform inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.unifit>)[unifit]: Continuous uniform parameter estimates
- #nlink(<statistics:2_probability_distributions.uniflike>)[uniflike]: Continuous uniform negative log-likelihood
- #nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf]: Continuous uniform probability density function
- #nlink(<statistics:2_probability_distributions.unifrnd>)[unifrnd]: Continuous uniform random numbers
- #nlink(<statistics:2_probability_distributions.unifstat>)[unifstat]: Continuous uniform mean and variance
- #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf]: Weibull cumulative distribution function
- #nlink(<statistics:2_probability_distributions.wblfit>)[wblfit]: Weibull parameter estimates
- #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv]: Weibull inverse cumulative distribution function
- #nlink(<statistics:2_probability_distributions.wbllike>)[wbllike]: Weibull negative log-likelihood
- #nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf]: Weibull probability density function
- #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd]: Weibull random numbers
- #nlink(<statistics:2_probability_distributions.wblstat>)[wblstat]: Weibull mean and variance

== Hypothesis Tests

Statistical tests for distribution fit, location, variance, ranks, independence, and comparisons.

=== Functions

- #nlink(<statistics:3_hypothesis_tests.adtest>)[adtest]: Anderson-Darling goodness-of-fit test.
- #nlink(<statistics:3_hypothesis_tests.ansaribradley>)[ansaribradley]: Ansari-Bradley test for equal dispersion.
- #nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof]: Chi-square goodness-of-fit test.
- #nlink(<statistics:3_hypothesis_tests.fishertest>)[fishertest]: Fisher exact test for a 2-by-2 table.
- #nlink(<statistics:3_hypothesis_tests.friedman>)[friedman]: Friedman test for blocked data.
- #nlink(<statistics:3_hypothesis_tests.fsrftest>)[fsrftest]: Rank predictors using univariate regression F-tests.
- #nlink(<statistics:3_hypothesis_tests.jbtest>)[jbtest]: Jarque-Bera normality test.
- #nlink(<statistics:3_hypothesis_tests.kruskalwallis>)[kruskalwallis]: Kruskal-Wallis one-way analysis of variance by ranks.
- #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest]: One-sample Kolmogorov-Smirnov test
- #nlink(<statistics:3_hypothesis_tests.kstest2>)[kstest2]: Two-sample Kolmogorov-Smirnov test
- #nlink(<statistics:3_hypothesis_tests.lillietest>)[lillietest]: Lilliefors goodness-of-fit test.
- #nlink(<statistics:3_hypothesis_tests.ranksum>)[ranksum]: Wilcoxon rank sum test.
- #nlink(<statistics:3_hypothesis_tests.runstest>)[runstest]: Runs test for randomness.
- #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank]: Wilcoxon signed rank test.
- #nlink(<statistics:3_hypothesis_tests.signtest>)[signtest]: Sign test.
- #nlink(<statistics:3_hypothesis_tests.ttest>)[ttest]: One-sample and paired t-test
- #nlink(<statistics:3_hypothesis_tests.ttest2>)[ttest2]: Two-sample t-test
- #nlink(<statistics:3_hypothesis_tests.vartest>)[vartest]: Chi-square test for a variance
- #nlink(<statistics:3_hypothesis_tests.vartest2>)[vartest2]: F-test for equal variances
- #nlink(<statistics:3_hypothesis_tests.ztest>)[ztest]: Z-test for a mean with known standard deviation

== ANOVA

Analysis of variance functions.

=== Functions

- #nlink(<statistics:4_anova.anova1>)[anova1]: One-way analysis of variance.
- #nlink(<statistics:4_anova.anova2>)[anova2]: Two-way analysis of variance.

== Regression

Regression, correlation, and supervised prediction functions.

=== Functions

- #nlink(<statistics:5_regression.GeneralizedLinearModel>)[GeneralizedLinearModel]: Generalized linear regression model.
- #nlink(<statistics:5_regression.LinearModel>)[LinearModel]: Linear regression model.
- #nlink(<statistics:5_regression.RegressionEnsemble>)[RegressionEnsemble]: Regression ensemble model.
- #nlink(<statistics:5_regression.RegressionSVM>)[RegressionSVM]: Support vector machine regression model.
- #nlink(<statistics:5_regression.RegressionTree>)[RegressionTree]: Decision tree regression model.
- #nlink(<statistics:5_regression.canoncorr>)[canoncorr]: Canonical correlation analysis.
- #nlink(<statistics:5_regression.compact>)[compact]: Return a compact predictive model.
- #nlink(<statistics:5_regression.fitensemble>)[fitensemble]: Fit an ensemble model using the legacy wrapper.
- #nlink(<statistics:5_regression.fitglm>)[fitglm]: Fit a generalized linear regression model.
- #nlink(<statistics:5_regression.fitlm>)[fitlm]: Fit a linear regression model.
- #nlink(<statistics:5_regression.fitrensemble>)[fitrensemble]: Fit an ensemble regression model.
- #nlink(<statistics:5_regression.fitrknn>)[fitrknn]: Fit a k-nearest-neighbor regression model.
- #nlink(<statistics:5_regression.fitrsvm>)[fitrsvm]: Fit a support vector regression model.
- #nlink(<statistics:5_regression.fitrtree>)[fitrtree]: Fit a regression decision tree.
- #nlink(<statistics:5_regression.lasso>)[lasso]: Lasso and elastic net regularization for linear models.
- #nlink(<statistics:5_regression.partialcorr>)[partialcorr]: Linear or rank partial correlation coefficients.
- #nlink(<statistics:5_regression.partialcorri>)[partialcorri]: Partial correlation coefficients adjusted for internal variables.
- #nlink(<statistics:5_regression.predict>)[predict]: Predict responses or class labels from a fitted model.
- #nlink(<statistics:5_regression.regress>)[regress]: Multiple linear regression.
- #nlink(<statistics:5_regression.regstats>)[regstats]: Regression diagnostic statistics.
- #nlink(<statistics:5_regression.ridge>)[ridge]: Ridge regression.
- #nlink(<statistics:5_regression.robustfit>)[robustfit]: Robust linear regression.

== Classification

Classification model functions and helpers for grouped data.

=== Functions

- #nlink(<statistics:6_classification.ClassificationDiscriminant>)[ClassificationDiscriminant]: Discriminant analysis classification model.
- #nlink(<statistics:6_classification.ClassificationECOC>)[ClassificationECOC]: Error-correcting output codes classification model.
- #nlink(<statistics:6_classification.ClassificationEnsemble>)[ClassificationEnsemble]: Classification ensemble model.
- #nlink(<statistics:6_classification.ClassificationKNN>)[ClassificationKNN]: K-nearest neighbor classification model.
- #nlink(<statistics:6_classification.ClassificationNaiveBayes>)[ClassificationNaiveBayes]: Naive Bayes classification model.
- #nlink(<statistics:6_classification.ClassificationSVM>)[ClassificationSVM]: Support vector machine classification model.
- #nlink(<statistics:6_classification.ClassificationTree>)[ClassificationTree]: Decision tree classification model.
- #nlink(<statistics:6_classification.dummyvar>)[dummyvar]: Create dummy variables from grouping variables.
- #nlink(<statistics:6_classification.fitcdiscr>)[fitcdiscr]: Fit a discriminant analysis classifier.
- #nlink(<statistics:6_classification.fitcecoc>)[fitcecoc]: Fit a multiclass error-correcting output code classifier.
- #nlink(<statistics:6_classification.fitcensemble>)[fitcensemble]: Fit an ensemble classifier.
- #nlink(<statistics:6_classification.fitcknn>)[fitcknn]: Fit a k-nearest neighbor classifier.
- #nlink(<statistics:6_classification.fitcnb>)[fitcnb]: Fit a naive Bayes classifier.
- #nlink(<statistics:6_classification.fitcsvm>)[fitcsvm]: Fit a binary support vector machine classifier.
- #nlink(<statistics:6_classification.fitctree>)[fitctree]: Fit a classification decision tree.
- #nlink(<statistics:6_classification.grp2idx>)[grp2idx]: Create index vector from grouping variable.

== Clustering and Anomaly Detection

Unsupervised learning, nearest-neighbor search, outlier handling, and sequence model functions.

=== Functions

- #nlink(<statistics:7_clustering_anomaly_detection.cluster>)[cluster]: Construct clusters from a hierarchical cluster tree.
- #nlink(<statistics:7_clustering_anomaly_detection.clusterdata>)[clusterdata]: Cluster observations from data.
- #nlink(<statistics:7_clustering_anomaly_detection.dbscan>)[dbscan]: Density-based spatial clustering.
- #nlink(<statistics:7_clustering_anomaly_detection.dendrogram>)[dendrogram]: Dendrogram plot for a hierarchical cluster tree.
- #nlink(<statistics:7_clustering_anomaly_detection.evalclusters>)[evalclusters]: Evaluate clustering solutions.
- #nlink(<statistics:7_clustering_anomaly_detection.filloutliers>)[filloutliers]: Detect and replace outliers in numeric data.
- #nlink(<statistics:7_clustering_anomaly_detection.fitgmdist>)[fitgmdist]: Fit a Gaussian mixture distribution.
- #nlink(<statistics:7_clustering_anomaly_detection.gmdistribution>)[gmdistribution]: Gaussian mixture distribution.
- #nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats]: Summary statistics organized by group.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode]: Posterior state probabilities for a discrete hidden Markov model.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmestimate>)[hmmestimate]: Estimate discrete hidden Markov probabilities from known states.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmgenerate>)[hmmgenerate]: Generate a discrete hidden Markov sequence.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmtrain>)[hmmtrain]: Train a discrete hidden Markov model.
- #nlink(<statistics:7_clustering_anomaly_detection.hmmviterbi>)[hmmviterbi]: Most likely state path for a discrete hidden Markov model.
- #nlink(<statistics:7_clustering_anomaly_detection.isoutlier>)[isoutlier]: Find outliers in numeric data.
- #nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans]: k-means clustering.
- #nlink(<statistics:7_clustering_anomaly_detection.kmedoids>)[kmedoids]: Partition data into clusters using medoids.
- #nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch]: Find k-nearest neighbors.
- #nlink(<statistics:7_clustering_anomaly_detection.linkage>)[linkage]: Agglomerative hierarchical cluster tree.
- #nlink(<statistics:7_clustering_anomaly_detection.mahal>)[mahal]: Squared Mahalanobis distance to reference samples.
- #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist]: Pairwise distances between observations.
- #nlink(<statistics:7_clustering_anomaly_detection.pdist2>)[pdist2]: Pairwise distances between two sets of observations.
- #nlink(<statistics:7_clustering_anomaly_detection.rangesearch>)[rangesearch]: Find all neighbors within a specified distance.
- #nlink(<statistics:7_clustering_anomaly_detection.rmoutliers>)[rmoutliers]: Detect and remove outliers from numeric data.
- #nlink(<statistics:7_clustering_anomaly_detection.silhouette>)[silhouette]: Silhouette values for clustered data.
- #nlink(<statistics:7_clustering_anomaly_detection.spectralcluster>)[spectralcluster]: Spectral clustering.
- #nlink(<statistics:7_clustering_anomaly_detection.squareform>)[squareform]: Convert between condensed distance vector and square distance matrix.

== Dimensionality Reduction and Feature Selection

Functions for dimensionality reduction, factor analysis, feature ranking, and low-rank representations.

=== Functions

- #nlink(<statistics:8_dimension_reduction_feature_selection.cmdscale>)[cmdscale]: Classical multidimensional scaling.
- #nlink(<statistics:8_dimension_reduction_feature_selection.factoran>)[factoran]: Factor analysis.
- #nlink(<statistics:8_dimension_reduction_feature_selection.mdscale>)[mdscale]: Nonclassical multidimensional scaling.
- #nlink(<statistics:8_dimension_reduction_feature_selection.nnmf>)[nnmf]: Nonnegative matrix factorization.
- #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca]: Principal component analysis of raw data.
- #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov]: Principal component analysis on a covariance matrix.
- #nlink(<statistics:8_dimension_reduction_feature_selection.pcares>)[pcares]: Residuals from principal component analysis.
- #nlink(<statistics:8_dimension_reduction_feature_selection.ppca>)[ppca]: Probabilistic principal component analysis.
- #nlink(<statistics:8_dimension_reduction_feature_selection.relieff>)[relieff]: Rank predictor importance using ReliefF.
- #nlink(<statistics:8_dimension_reduction_feature_selection.rotatefactors>)[rotatefactors]: Rotate factor loadings.
- #nlink(<statistics:8_dimension_reduction_feature_selection.sequentialfs>)[sequentialfs]: Sequential feature selection using a custom criterion.

== Design of Experiments

Functions for experimental design and model configuration.

=== Functions

- #nlink(<statistics:9_design_of_experiments.candexch>)[candexch]: D-optimal row selection from a candidate set.
- #nlink(<statistics:9_design_of_experiments.candgen>)[candgen]: Generate a candidate set for designs.
- #nlink(<statistics:9_design_of_experiments.cordexch>)[cordexch]: D-optimal design using coordinate-style interface.
- #nlink(<statistics:9_design_of_experiments.daugment>)[daugment]: Augment a D-optimal design.
- #nlink(<statistics:9_design_of_experiments.rowexch>)[rowexch]: D-optimal design using row exchange.
- #nlink(<statistics:9_design_of_experiments.statget>)[statget]: Access field values in statistics options structures.
- #nlink(<statistics:9_design_of_experiments.statset>)[statset]: Create or update statistics options structures.
- #nlink(<statistics:9_design_of_experiments.x2fx>)[x2fx]: Convert factor settings to a design matrix.


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
