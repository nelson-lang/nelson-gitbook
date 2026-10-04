# Statistics

The Statistics module provides tools for analyzing and summarizing data in Nelson.

It includes functions for computing measures of central tendency, variability, correlation, and probability distributions.

The module also supports advanced data summarization structures for accurate quantile estimation, enabling robust statistical analysis and interpretation of datasets.

## Descriptive Statistics and Visualization

Functions for summarizing, exploring, ranking, and visualizing statistical data.

### Functions

- [bootci](1_descriptive_statistics_visualization/bootci.md) - Bootstrap confidence interval.
- [bootstrp](1_descriptive_statistics_visualization/bootstrp.md) - Bootstrap sampling.
- [corr](1_descriptive_statistics_visualization/corr.md) - Linear or rank correlation.
- [corrcoef](1_descriptive_statistics_visualization/corrcoef.md) - Correlation coefficients
- [cov](1_descriptive_statistics_visualization/cov.md) - Covariance
- [crosstab](1_descriptive_statistics_visualization/crosstab.md) - Cross-tabulation.
- [ecdf](1_descriptive_statistics_visualization/ecdf.md) - Empirical cumulative distribution function.
- [geomean](1_descriptive_statistics_visualization/geomean.md) - Geometric mean of a data set.
- [harmmean](1_descriptive_statistics_visualization/harmmean.md) - Harmonic mean of a data set.
- [hist](1_descriptive_statistics_visualization/hist.md) - Histogram bin counts.
- [histfit](1_descriptive_statistics_visualization/histfit.md) - Histogram with fitted distribution curve.
- [iqr](1_descriptive_statistics_visualization/iqr.md) - Interquartile range.
- [jackknife](1_descriptive_statistics_visualization/jackknife.md) - Jackknife statistics.
- [ksdensity](1_descriptive_statistics_visualization/ksdensity.md) - Kernel smoothing function estimate.
- [kurtosis](1_descriptive_statistics_visualization/kurtosis.md) - Kurtosis of a data set.
- [mad](1_descriptive_statistics_visualization/mad.md) - Mean or median absolute deviation.
- [mean](1_descriptive_statistics_visualization/mean.md) - Mean of array elements.
- [median](1_descriptive_statistics_visualization/median.md) - Median value of array elements.
- [mode](1_descriptive_statistics_visualization/mode.md) - Most frequent values.
- [moment](1_descriptive_statistics_visualization/moment.md) - Central moment of a data set.
- [nanmax](1_descriptive_statistics_visualization/nanmax.md) - Maximum, ignoring NaN values.
- [nanmean](1_descriptive_statistics_visualization/nanmean.md) - Mean, ignoring NaN values.
- [nanmedian](1_descriptive_statistics_visualization/nanmedian.md) - Median, ignoring NaN values.
- [nanmin](1_descriptive_statistics_visualization/nanmin.md) - Minimum, ignoring NaN values.
- [nanstd](1_descriptive_statistics_visualization/nanstd.md) - Standard deviation, ignoring NaN values.
- [nansum](1_descriptive_statistics_visualization/nansum.md) - Sum, ignoring NaN values.
- [nanvar](1_descriptive_statistics_visualization/nanvar.md) - Variance, ignoring NaN values.
- [prctile](1_descriptive_statistics_visualization/prctile.md) - Percentiles of a data set.
- [probplot](1_descriptive_statistics_visualization/probplot.md) - Probability plot.
- [qqplot](1_descriptive_statistics_visualization/qqplot.md) - Quantile-quantile plot.
- [quantile](1_descriptive_statistics_visualization/quantile.md) - Quantiles of a data set.
- [range](1_descriptive_statistics_visualization/range.md) - Range of values.
- [skewness](1_descriptive_statistics_visualization/skewness.md) - Skewness of a data set.
- [std](1_descriptive_statistics_visualization/std.md) - Standard deviation
- [tabulate](1_descriptive_statistics_visualization/tabulate.md) - Frequency table.
- [tdigest](1_descriptive_statistics_visualization/tdigest.md) - t-digest algorithm data structure for accurate quantile estimation with configurable compression parameters
- [tiedrank](1_descriptive_statistics_visualization/tiedrank.md) - Ranks with average values for ties.
- [trimmean](1_descriptive_statistics_visualization/trimmean.md) - Mean after trimming extreme values.
- [var](1_descriptive_statistics_visualization/var.md) - Variance
- [zscore](1_descriptive_statistics_visualization/zscore.md) - Standardized z-scores.

## Probability Distributions

Distribution functions for density, cumulative probability, inverse probability, fitting, likelihood, random sampling, and summary statistics.

### Functions

- [betacdf](2_probability_distributions/betacdf.md) - Beta cumulative distribution function
- [betafit](2_probability_distributions/betafit.md) - Beta parameter estimates
- [betainv](2_probability_distributions/betainv.md) - Beta inverse cumulative distribution function
- [betalike](2_probability_distributions/betalike.md) - Beta negative log-likelihood
- [betapdf](2_probability_distributions/betapdf.md) - Beta probability density function
- [betarnd](2_probability_distributions/betarnd.md) - Beta random numbers
- [betastat](2_probability_distributions/betastat.md) - Beta mean and variance
- [binocdf](2_probability_distributions/binocdf.md) - Binomial cumulative distribution function
- [binofit](2_probability_distributions/binofit.md) - Binomial probability estimate
- [binoinv](2_probability_distributions/binoinv.md) - Binomial inverse cumulative distribution function
- [binolike](2_probability_distributions/binolike.md) - Binomial negative log-likelihood
- [binopdf](2_probability_distributions/binopdf.md) - Binomial probability density function
- [binornd](2_probability_distributions/binornd.md) - Binomial random numbers
- [binostat](2_probability_distributions/binostat.md) - Binomial mean and variance
- [chi2cdf](2_probability_distributions/chi2cdf.md) - Chi-square cumulative distribution function
- [chi2inv](2_probability_distributions/chi2inv.md) - Chi-square inverse cumulative distribution function
- [chi2pdf](2_probability_distributions/chi2pdf.md) - Chi-square probability density function
- [chi2rnd](2_probability_distributions/chi2rnd.md) - Chi-square random numbers
- [chi2stat](2_probability_distributions/chi2stat.md) - Chi-square mean and variance
- [evcdf](2_probability_distributions/evcdf.md) - Extreme value cumulative distribution function
- [evfit](2_probability_distributions/evfit.md) - Extreme value parameter estimates
- [evinv](2_probability_distributions/evinv.md) - Extreme value inverse cumulative distribution function
- [evlike](2_probability_distributions/evlike.md) - Extreme value negative log-likelihood
- [evpdf](2_probability_distributions/evpdf.md) - Extreme value probability density function
- [evrnd](2_probability_distributions/evrnd.md) - Extreme value random numbers
- [evstat](2_probability_distributions/evstat.md) - Extreme value mean and variance
- [expcdf](2_probability_distributions/expcdf.md) - Exponential cumulative distribution function
- [expfit](2_probability_distributions/expfit.md) - Exponential mean estimate
- [expinv](2_probability_distributions/expinv.md) - Exponential inverse cumulative distribution function
- [explike](2_probability_distributions/explike.md) - Exponential negative log-likelihood
- [exppdf](2_probability_distributions/exppdf.md) - Exponential probability density function
- [exprnd](2_probability_distributions/exprnd.md) - Exponential random numbers
- [expstat](2_probability_distributions/expstat.md) - Exponential mean and variance
- [fcdf](2_probability_distributions/fcdf.md) - F cumulative distribution function
- [finv](2_probability_distributions/finv.md) - F inverse cumulative distribution function
- [fpdf](2_probability_distributions/fpdf.md) - F probability density function
- [frnd](2_probability_distributions/frnd.md) - F random numbers
- [fstat](2_probability_distributions/fstat.md) - F mean and variance
- [gamcdf](2_probability_distributions/gamcdf.md) - Gamma cumulative distribution function
- [gamfit](2_probability_distributions/gamfit.md) - Gamma parameter estimates
- [gaminv](2_probability_distributions/gaminv.md) - Gamma inverse cumulative distribution function
- [gamlike](2_probability_distributions/gamlike.md) - Gamma negative log-likelihood
- [gampdf](2_probability_distributions/gampdf.md) - Gamma probability density function
- [gamrnd](2_probability_distributions/gamrnd.md) - Gamma random numbers
- [gamstat](2_probability_distributions/gamstat.md) - Gamma mean and variance
- [geocdf](2_probability_distributions/geocdf.md) - Geometric cumulative distribution function
- [geofit](2_probability_distributions/geofit.md) - Geometric probability estimate
- [geoinv](2_probability_distributions/geoinv.md) - Geometric inverse cumulative distribution function
- [geolike](2_probability_distributions/geolike.md) - Geometric negative log-likelihood
- [geopdf](2_probability_distributions/geopdf.md) - Geometric probability density function
- [geornd](2_probability_distributions/geornd.md) - Geometric random numbers
- [geostat](2_probability_distributions/geostat.md) - Geometric mean and variance
- [gevcdf](2_probability_distributions/gevcdf.md) - Generalized extreme value cumulative distribution function
- [gevfit](2_probability_distributions/gevfit.md) - Generalized extreme value parameter estimates
- [gevinv](2_probability_distributions/gevinv.md) - Generalized extreme value inverse cumulative distribution function
- [gevlike](2_probability_distributions/gevlike.md) - Generalized extreme value negative log-likelihood
- [gevpdf](2_probability_distributions/gevpdf.md) - Generalized extreme value probability density function
- [gevrnd](2_probability_distributions/gevrnd.md) - Generalized extreme value random numbers
- [gevstat](2_probability_distributions/gevstat.md) - Generalized extreme value mean and variance
- [logncdf](2_probability_distributions/logncdf.md) - Lognormal cumulative distribution function
- [lognfit](2_probability_distributions/lognfit.md) - Lognormal parameter estimates
- [logninv](2_probability_distributions/logninv.md) - Lognormal inverse cumulative distribution function
- [lognlike](2_probability_distributions/lognlike.md) - Lognormal negative log-likelihood
- [lognpdf](2_probability_distributions/lognpdf.md) - Lognormal probability density function
- [lognrnd](2_probability_distributions/lognrnd.md) - Lognormal random numbers
- [lognstat](2_probability_distributions/lognstat.md) - Lognormal mean and variance
- [nbincdf](2_probability_distributions/nbincdf.md) - Negative binomial cumulative distribution function
- [nbinfit](2_probability_distributions/nbinfit.md) - Negative binomial parameter estimates
- [nbininv](2_probability_distributions/nbininv.md) - Negative binomial inverse cumulative distribution function
- [nbinlike](2_probability_distributions/nbinlike.md) - Negative binomial negative log-likelihood
- [nbinpdf](2_probability_distributions/nbinpdf.md) - Negative binomial probability density function
- [nbinrnd](2_probability_distributions/nbinrnd.md) - Negative binomial random numbers
- [nbinstat](2_probability_distributions/nbinstat.md) - Negative binomial mean and variance
- [normcdf](2_probability_distributions/normcdf.md) - Normal cumulative distribution function
- [normfit](2_probability_distributions/normfit.md) - Normal mean and standard deviation estimates
- [norminv](2_probability_distributions/norminv.md) - Normal inverse cumulative distribution function
- [normlike](2_probability_distributions/normlike.md) - Normal negative log-likelihood
- [normpdf](2_probability_distributions/normpdf.md) - Normal probability density function
- [normrnd](2_probability_distributions/normrnd.md) - Normal random numbers
- [normstat](2_probability_distributions/normstat.md) - Normal mean and variance
- [poisscdf](2_probability_distributions/poisscdf.md) - Poisson cumulative distribution function
- [poissfit](2_probability_distributions/poissfit.md) - Poisson rate estimate
- [poissinv](2_probability_distributions/poissinv.md) - Poisson inverse cumulative distribution function
- [poisslike](2_probability_distributions/poisslike.md) - Poisson negative log-likelihood
- [poisspdf](2_probability_distributions/poisspdf.md) - Poisson probability density function
- [poissrnd](2_probability_distributions/poissrnd.md) - Poisson random numbers
- [poissstat](2_probability_distributions/poissstat.md) - Poisson mean and variance
- [randsample](2_probability_distributions/randsample.md) - Random sample from a population.
- [raylcdf](2_probability_distributions/raylcdf.md) - Rayleigh cumulative distribution function
- [raylfit](2_probability_distributions/raylfit.md) - Rayleigh scale estimate
- [raylinv](2_probability_distributions/raylinv.md) - Rayleigh inverse cumulative distribution function
- [rayllike](2_probability_distributions/rayllike.md) - Rayleigh negative log-likelihood
- [raylpdf](2_probability_distributions/raylpdf.md) - Rayleigh probability density function
- [raylrnd](2_probability_distributions/raylrnd.md) - Rayleigh random numbers
- [raylstat](2_probability_distributions/raylstat.md) - Rayleigh mean and variance
- [tcdf](2_probability_distributions/tcdf.md) - Student t cumulative distribution function
- [tinv](2_probability_distributions/tinv.md) - Student t inverse cumulative distribution function
- [tpdf](2_probability_distributions/tpdf.md) - Student t probability density function
- [trnd](2_probability_distributions/trnd.md) - Student t random numbers
- [tstat](2_probability_distributions/tstat.md) - Student t mean and variance
- [unidcdf](2_probability_distributions/unidcdf.md) - Discrete uniform cumulative distribution function
- [unidfit](2_probability_distributions/unidfit.md) - Discrete uniform maximum estimate
- [unidinv](2_probability_distributions/unidinv.md) - Discrete uniform inverse cumulative distribution function
- [unidlike](2_probability_distributions/unidlike.md) - Discrete uniform negative log-likelihood
- [unidpdf](2_probability_distributions/unidpdf.md) - Discrete uniform probability density function
- [unidrnd](2_probability_distributions/unidrnd.md) - Discrete uniform random numbers
- [unidstat](2_probability_distributions/unidstat.md) - Discrete uniform mean and variance
- [unifcdf](2_probability_distributions/unifcdf.md) - Continuous uniform cumulative distribution function
- [unifinv](2_probability_distributions/unifinv.md) - Continuous uniform inverse cumulative distribution function
- [unifit](2_probability_distributions/unifit.md) - Continuous uniform parameter estimates
- [uniflike](2_probability_distributions/uniflike.md) - Continuous uniform negative log-likelihood
- [unifpdf](2_probability_distributions/unifpdf.md) - Continuous uniform probability density function
- [unifrnd](2_probability_distributions/unifrnd.md) - Continuous uniform random numbers
- [unifstat](2_probability_distributions/unifstat.md) - Continuous uniform mean and variance
- [wblcdf](2_probability_distributions/wblcdf.md) - Weibull cumulative distribution function
- [wblfit](2_probability_distributions/wblfit.md) - Weibull parameter estimates
- [wblinv](2_probability_distributions/wblinv.md) - Weibull inverse cumulative distribution function
- [wbllike](2_probability_distributions/wbllike.md) - Weibull negative log-likelihood
- [wblpdf](2_probability_distributions/wblpdf.md) - Weibull probability density function
- [wblrnd](2_probability_distributions/wblrnd.md) - Weibull random numbers
- [wblstat](2_probability_distributions/wblstat.md) - Weibull mean and variance

## Hypothesis Tests

Statistical tests for distribution fit, location, variance, ranks, independence, and comparisons.

### Functions

- [adtest](3_hypothesis_tests/adtest.md) - Anderson-Darling goodness-of-fit test.
- [ansaribradley](3_hypothesis_tests/ansaribradley.md) - Ansari-Bradley test for equal dispersion.
- [chi2gof](3_hypothesis_tests/chi2gof.md) - Chi-square goodness-of-fit test.
- [fishertest](3_hypothesis_tests/fishertest.md) - Fisher exact test for a 2-by-2 table.
- [friedman](3_hypothesis_tests/friedman.md) - Friedman test for blocked data.
- [fsrftest](3_hypothesis_tests/fsrftest.md) - Rank predictors using univariate regression F-tests.
- [jbtest](3_hypothesis_tests/jbtest.md) - Jarque-Bera normality test.
- [kruskalwallis](3_hypothesis_tests/kruskalwallis.md) - Kruskal-Wallis one-way analysis of variance by ranks.
- [kstest](3_hypothesis_tests/kstest.md) - One-sample Kolmogorov-Smirnov test
- [kstest2](3_hypothesis_tests/kstest2.md) - Two-sample Kolmogorov-Smirnov test
- [lillietest](3_hypothesis_tests/lillietest.md) - Lilliefors goodness-of-fit test.
- [ranksum](3_hypothesis_tests/ranksum.md) - Wilcoxon rank sum test.
- [runstest](3_hypothesis_tests/runstest.md) - Runs test for randomness.
- [signrank](3_hypothesis_tests/signrank.md) - Wilcoxon signed rank test.
- [signtest](3_hypothesis_tests/signtest.md) - Sign test.
- [ttest](3_hypothesis_tests/ttest.md) - One-sample and paired t-test
- [ttest2](3_hypothesis_tests/ttest2.md) - Two-sample t-test
- [vartest](3_hypothesis_tests/vartest.md) - Chi-square test for a variance
- [vartest2](3_hypothesis_tests/vartest2.md) - F-test for equal variances
- [ztest](3_hypothesis_tests/ztest.md) - Z-test for a mean with known standard deviation

## ANOVA

Analysis of variance functions.

### Functions

- [anova1](4_anova/anova1.md) - One-way analysis of variance.
- [anova2](4_anova/anova2.md) - Two-way analysis of variance.

## Regression

Regression, correlation, and supervised prediction functions.

### Functions

- [GeneralizedLinearModel](5_regression/GeneralizedLinearModel.md) - Generalized linear regression model.
- [LinearModel](5_regression/LinearModel.md) - Linear regression model.
- [RegressionEnsemble](5_regression/RegressionEnsemble.md) - Regression ensemble model.
- [RegressionSVM](5_regression/RegressionSVM.md) - Support vector machine regression model.
- [RegressionTree](5_regression/RegressionTree.md) - Decision tree regression model.
- [canoncorr](5_regression/canoncorr.md) - Canonical correlation analysis.
- [compact](5_regression/compact.md) - Return a compact predictive model.
- [fitensemble](5_regression/fitensemble.md) - Fit an ensemble model using the legacy wrapper.
- [fitglm](5_regression/fitglm.md) - Fit a generalized linear regression model.
- [fitlm](5_regression/fitlm.md) - Fit a linear regression model.
- [fitrensemble](5_regression/fitrensemble.md) - Fit an ensemble regression model.
- [fitrknn](5_regression/fitrknn.md) - Fit a k-nearest-neighbor regression model.
- [fitrsvm](5_regression/fitrsvm.md) - Fit a support vector regression model.
- [fitrtree](5_regression/fitrtree.md) - Fit a regression decision tree.
- [lasso](5_regression/lasso.md) - Lasso and elastic net regularization for linear models.
- [partialcorr](5_regression/partialcorr.md) - Linear or rank partial correlation coefficients.
- [partialcorri](5_regression/partialcorri.md) - Partial correlation coefficients adjusted for internal variables.
- [predict](5_regression/predict.md) - Predict responses or class labels from a fitted model.
- [regress](5_regression/regress.md) - Multiple linear regression.
- [regstats](5_regression/regstats.md) - Regression diagnostic statistics.
- [ridge](5_regression/ridge.md) - Ridge regression.
- [robustfit](5_regression/robustfit.md) - Robust linear regression.

## Classification

Classification model functions and helpers for grouped data.

### Functions

- [ClassificationDiscriminant](6_classification/ClassificationDiscriminant.md) - Discriminant analysis classification model.
- [ClassificationECOC](6_classification/ClassificationECOC.md) - Error-correcting output codes classification model.
- [ClassificationEnsemble](6_classification/ClassificationEnsemble.md) - Classification ensemble model.
- [ClassificationKNN](6_classification/ClassificationKNN.md) - K-nearest neighbor classification model.
- [ClassificationNaiveBayes](6_classification/ClassificationNaiveBayes.md) - Naive Bayes classification model.
- [ClassificationSVM](6_classification/ClassificationSVM.md) - Support vector machine classification model.
- [ClassificationTree](6_classification/ClassificationTree.md) - Decision tree classification model.
- [dummyvar](6_classification/dummyvar.md) - Create dummy variables from grouping variables.
- [fitcdiscr](6_classification/fitcdiscr.md) - Fit a discriminant analysis classifier.
- [fitcecoc](6_classification/fitcecoc.md) - Fit a multiclass error-correcting output code classifier.
- [fitcensemble](6_classification/fitcensemble.md) - Fit an ensemble classifier.
- [fitcknn](6_classification/fitcknn.md) - Fit a k-nearest neighbor classifier.
- [fitcnb](6_classification/fitcnb.md) - Fit a naive Bayes classifier.
- [fitcsvm](6_classification/fitcsvm.md) - Fit a binary support vector machine classifier.
- [fitctree](6_classification/fitctree.md) - Fit a classification decision tree.
- [grp2idx](6_classification/grp2idx.md) - Create index vector from grouping variable.

## Clustering and Anomaly Detection

Unsupervised learning, nearest-neighbor search, outlier handling, and sequence model functions.

### Functions

- [cluster](7_clustering_anomaly_detection/cluster.md) - Construct clusters from a hierarchical cluster tree.
- [clusterdata](7_clustering_anomaly_detection/clusterdata.md) - Cluster observations from data.
- [dbscan](7_clustering_anomaly_detection/dbscan.md) - Density-based spatial clustering.
- [dendrogram](7_clustering_anomaly_detection/dendrogram.md) - Dendrogram plot for a hierarchical cluster tree.
- [evalclusters](7_clustering_anomaly_detection/evalclusters.md) - Evaluate clustering solutions.
- [filloutliers](7_clustering_anomaly_detection/filloutliers.md) - Detect and replace outliers in numeric data.
- [fitgmdist](7_clustering_anomaly_detection/fitgmdist.md) - Fit a Gaussian mixture distribution.
- [gmdistribution](7_clustering_anomaly_detection/gmdistribution.md) - Gaussian mixture distribution.
- [grpstats](7_clustering_anomaly_detection/grpstats.md) - Summary statistics organized by group.
- [hmmdecode](7_clustering_anomaly_detection/hmmdecode.md) - Posterior state probabilities for a discrete hidden Markov model.
- [hmmestimate](7_clustering_anomaly_detection/hmmestimate.md) - Estimate discrete hidden Markov probabilities from known states.
- [hmmgenerate](7_clustering_anomaly_detection/hmmgenerate.md) - Generate a discrete hidden Markov sequence.
- [hmmtrain](7_clustering_anomaly_detection/hmmtrain.md) - Train a discrete hidden Markov model.
- [hmmviterbi](7_clustering_anomaly_detection/hmmviterbi.md) - Most likely state path for a discrete hidden Markov model.
- [isoutlier](7_clustering_anomaly_detection/isoutlier.md) - Find outliers in numeric data.
- [kmeans](7_clustering_anomaly_detection/kmeans.md) - k-means clustering.
- [kmedoids](7_clustering_anomaly_detection/kmedoids.md) - Partition data into clusters using medoids.
- [knnsearch](7_clustering_anomaly_detection/knnsearch.md) - Find k-nearest neighbors.
- [linkage](7_clustering_anomaly_detection/linkage.md) - Agglomerative hierarchical cluster tree.
- [mahal](7_clustering_anomaly_detection/mahal.md) - Squared Mahalanobis distance to reference samples.
- [pdist](7_clustering_anomaly_detection/pdist.md) - Pairwise distances between observations.
- [pdist2](7_clustering_anomaly_detection/pdist2.md) - Pairwise distances between two sets of observations.
- [rangesearch](7_clustering_anomaly_detection/rangesearch.md) - Find all neighbors within a specified distance.
- [rmoutliers](7_clustering_anomaly_detection/rmoutliers.md) - Detect and remove outliers from numeric data.
- [silhouette](7_clustering_anomaly_detection/silhouette.md) - Silhouette values for clustered data.
- [spectralcluster](7_clustering_anomaly_detection/spectralcluster.md) - Spectral clustering.
- [squareform](7_clustering_anomaly_detection/squareform.md) - Convert between condensed distance vector and square distance matrix.

## Dimensionality Reduction and Feature Selection

Functions for dimensionality reduction, factor analysis, feature ranking, and low-rank representations.

### Functions

- [cmdscale](8_dimension_reduction_feature_selection/cmdscale.md) - Classical multidimensional scaling.
- [factoran](8_dimension_reduction_feature_selection/factoran.md) - Factor analysis.
- [mdscale](8_dimension_reduction_feature_selection/mdscale.md) - Nonclassical multidimensional scaling.
- [nnmf](8_dimension_reduction_feature_selection/nnmf.md) - Nonnegative matrix factorization.
- [pca](8_dimension_reduction_feature_selection/pca.md) - Principal component analysis of raw data.
- [pcacov](8_dimension_reduction_feature_selection/pcacov.md) - Principal component analysis on a covariance matrix.
- [pcares](8_dimension_reduction_feature_selection/pcares.md) - Residuals from principal component analysis.
- [ppca](8_dimension_reduction_feature_selection/ppca.md) - Probabilistic principal component analysis.
- [relieff](8_dimension_reduction_feature_selection/relieff.md) - Rank predictor importance using ReliefF.
- [rotatefactors](8_dimension_reduction_feature_selection/rotatefactors.md) - Rotate factor loadings.
- [sequentialfs](8_dimension_reduction_feature_selection/sequentialfs.md) - Sequential feature selection using a custom criterion.

## Design of Experiments

Functions for experimental design and model configuration.

### Functions

- [candexch](9_design_of_experiments/candexch.md) - D-optimal row selection from a candidate set.
- [candgen](9_design_of_experiments/candgen.md) - Generate a candidate set for designs.
- [cordexch](9_design_of_experiments/cordexch.md) - D-optimal design using coordinate-style interface.
- [daugment](9_design_of_experiments/daugment.md) - Augment a D-optimal design.
- [rowexch](9_design_of_experiments/rowexch.md) - D-optimal design using row exchange.
- [statget](9_design_of_experiments/statget.md) - Access field values in statistics options structures.
- [statset](9_design_of_experiments/statset.md) - Create or update statistics options structures.
- [x2fx](9_design_of_experiments/x2fx.md) - Convert factor settings to a design matrix.
