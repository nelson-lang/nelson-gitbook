# fitensemble

Ajuste un modele d'ensemble avec la syntaxe historique.

## 📝 Syntaxe

- mdl = fitensemble(X, Y, method, numLearningCycles, learners)
- mdl = fitensemble(..., Name, Value)

## 📄 Description


<b>fitensemble</b> redirige la syntaxe historique vers <b>fitrensemble</b> ou <b>fitcensemble</b>. Utilisez <b>Type</b> pour choisir regression ou classification.

## 💡 Exemple



```matlab
X = (1:6)';
Y = [1; 2; 1.5; 4; 3.5; 5];
mdl = fitensemble(X, Y, 'LSBoost', 3, 'Tree', 'Type', 'regression')
```


## 🔗 Voir aussi

[fitrensemble](../../statistics/5_regression/fitrensemble.md), [fitcensemble](../../statistics/6_classification/fitcensemble.md).