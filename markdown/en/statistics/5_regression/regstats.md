# regstats

Regression diagnostic statistics.

## 📝 Syntax

- stats = regstats(y, X)
- stats = regstats(y, X, modelspec)
- stats = regstats(y, X, modelspec, StatNames)

## 📄 Description


<b>regstats</b> fits a linear regression model of response vector <b>y</b> on predictor matrix <b>X</b> and returns diagnostic statistics in a structure. 

The model includes a constant term by default. Supported model specifications are <b>linear</b>, <b>additive</b>, <b>interactions</b>, <b>quadratic</b>, <b>purequadratic</b>, a positive integer degree, or a numeric matrix of term exponents. 

<b>StatNames</b> can be <b>all</b>, a text scalar, or a cell array of names. Supported statistic names include <b>Q</b>, <b>R</b>, <b>beta</b>, <b>covb</b>, <b>yhat</b>, <b>r</b>, <b>mse</b>, <b>rsquare</b>, <b>adjrsquare</b>, <b>leverage</b>, <b>hatmat</b>, <b>s2\_i</b>, <b>beta\_i</b>, <b>standres</b>, <b>studres</b>, <b>dfbetas</b>, <b>dffit</b>, <b>dffits</b>, <b>covratio</b>, <b>cookd</b>, <b>tstat</b>, <b>fstat</b>, and <b>dwstat</b>.

## 💡 Examples



```matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'linear', {'beta', 'rsquare', 'tstat'})
```


```matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'interactions', {'yhat', 'r'})
```


## 🔗 See also

[regress](../../statistics/5_regression/regress.md), [robustfit](../../statistics/5_regression/robustfit.md), [ridge](../../statistics/5_regression/ridge.md), [lasso](../../statistics/5_regression/lasso.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
