# RegressionTree

Modele d'arbre de regression.

## 📝 Syntaxe

- mdl = fitrtree(X, y)
- yfit = predict(mdl, Xnew)
- [yfit, node] = predict(mdl, Xnew)

## 📥 Argument d'entrée

- X - matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
- y - vecteur numerique : reponses, une valeur pour chaque ligne de X.
- Name, Value - arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

## 📤 Argument de sortie

- mdl - objet modele de regression renvoye par la fonction d'ajustement.
- yfit - reponses predites pour de nouvelles observations.

## 📄 Description

RegressionTree stocke un arbre de regression construit a partir de predicteurs et d'une reponse numerique.

Creez cet objet avec fitrtree. Utilisez predict pour estimer les reponses de nouvelles observations.

## Fonction(s) utilisée(s)

    fitrtree
    predict

## 💡 Exemple

Entrainer un arbre de regression et predire deux reponses.

```matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitrtree(X, y);
yfit = predict(mdl, [7 4; 8 5])
```

## 🔗 Voir aussi

[predict](../../statistics/predict.md), [fitrtree](../../statistics/fitrtree.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
