# fitglm

Ajuste un modele de regression lineaire generalise.

## 📝 Syntaxe

- mdl = fitglm(X, y)
- mdl = fitglm(X, y, modelspec)
- mdl = fitglm(X, y, ..., Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description

<b>fitglm</b> cree un objet <b>GeneralizedLinearModel</b> a partir des predicteurs numeriques <b>X</b> et de la reponse <b>y</b>.

Les distributions prises en charge sont <b>normal</b>, <b>binomial</b> et <b>poisson</b>. Les liens pris en charge sont <b>identity</b>, <b>log</b> et <b>logit</b>, avec des valeurs par defaut canoniques pour chaque distribution.

Les specifications de modele prises en charge incluent <b>constant</b>, <b>linear</b>, <b>interactions</b>, <b>quadratic</b>, <b>purequadratic</b> et les matrices de termes numeriques. Les arguments nom-valeur incluent <b>Distribution</b>, <b>Link</b>, <b>Intercept</b>, <b>PredictorNames</b>, <b>ResponseName</b>, <b>MaxIter</b> et <b>TolFun</b>.

## 💡 Exemple

```matlab
X = [0; 1; 2; 3; 4; 5; 6; 7];
y = [1; 1; 2; 3; 5; 8; 13; 21];
mdl = fitglm(X, y, 'Distribution', 'poisson');
yfit = predict(mdl, [2; 4; 6])
```

## 🔗 Voir aussi

[fitlm](../../statistics/fitlm.md), [regress](../../statistics/regress.md), [robustfit](../../statistics/robustfit.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
