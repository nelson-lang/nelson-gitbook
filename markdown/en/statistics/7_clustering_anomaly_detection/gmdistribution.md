# gmdistribution

Gaussian mixture distribution.

## 📝 Syntax

- gm = gmdistribution(mu, Sigma)
- gm = gmdistribution(mu, Sigma, p)
- y = pdf(gm, X)
- P = posterior(gm, X)
- idx = cluster(gm, X)
- R = random(gm, n)

## 📄 Description

<b>gmdistribution</b> creates a Gaussian mixture model object from component means, covariance matrices, and optional component proportions.

The object supports density evaluation with <b>pdf</b>, posterior probabilities with <b>posterior</b>, maximum-posterior assignment with <b>cluster</b>, and random sampling with <b>random</b>.

## 💡 Example

Create and evaluate a two-component mixture.

```matlab
gm = gmdistribution([0; 10], cat(3, 1, 4), [0.25 0.75]);
y = pdf(gm, [0; 10; 5])
P = posterior(gm, [0; 10; 5])
```

## 🔗 See also

[fitgmdist](../../statistics/fitgmdist.md), [kmeans](../../statistics/kmeans.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
