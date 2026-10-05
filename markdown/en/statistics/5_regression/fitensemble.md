# fitensemble

Fit an ensemble model using the legacy wrapper.

## 📝 Syntax

- mdl = fitensemble(X, Y, method, numLearningCycles, learners)
- mdl = fitensemble(..., Name, Value)

## 📄 Description


<b>fitensemble</b> routes legacy ensemble syntax to <b>fitrensemble</b> or <b>fitcensemble</b>. Use <b>Type</b> to select regression or classification.

## 💡 Example



```matlab
X = (1:6)';
Y = [1; 2; 1.5; 4; 3.5; 5];
mdl = fitensemble(X, Y, 'LSBoost', 3, 'Tree', 'Type', 'regression')
```


## 🔗 See also

[fitrensemble](../../statistics/5_regression/fitrensemble.md), [fitcensemble](../../statistics/6_classification/fitcensemble.md).