# fitlm

Ajuste un modele de regression lineaire.

## 📝 Syntaxe

- mdl = fitlm(X, y)
- mdl = fitlm(X, y, modelspec)
- mdl = fitlm(X, y, ..., Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description

<b>fitlm</b> cree un objet <b>LinearModel</b> a partir de predicteurs numeriques <b>X</b> et d'une reponse <b>y</b>.

Les specifications de modele prises en charge incluent <b>constant</b>, <b>linear</b>, <b>interactions</b>, <b>quadratic</b>, <b>purequadratic</b> et les matrices numeriques de termes. Les arguments nom-valeur incluent <b>Intercept</b>, <b>PredictorNames</b> et <b>ResponseName</b>.

## 💡 Exemple

```matlab
X = [1 2; 2 1; 3 4; 4 3; 5 6; 6 5];
y = 1 + 2 * X(:,1) - 3 * X(:,2);
mdl = fitlm(X, y);
yfit = predict(mdl, [7 8; 8 7])
```

## 🔗 Voir aussi

[regress](../../statistics/regress.md), [regstats](../../statistics/regstats.md), [robustfit](../../statistics/robustfit.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
