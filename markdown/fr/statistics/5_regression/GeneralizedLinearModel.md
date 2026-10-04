# GeneralizedLinearModel

Modele de regression lineaire generalisee.

## 📝 Syntaxe

- mdl = fitglm(X, y)
- mdl = fitglm(X, y, modelspec)
- yfit = predict(mdl, Xnew)

## 📥 Argument d'entrée

- X - matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
- y - vecteur numerique : reponses, une valeur pour chaque ligne de X.
- Name, Value - arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

## 📤 Argument de sortie

- mdl - objet modele de regression renvoye par la fonction d'ajustement.
- yfit - reponses predites pour de nouvelles observations.

## 📄 Description

GeneralizedLinearModel stocke un modele lineaire generalise ajuste a partir de predicteurs et d'une reponse.

Creez cet objet avec fitglm. Utilisez predict pour evaluer les reponses ajustees pour de nouveaux predicteurs.

## Fonction(s) utilisée(s)

    fitglm
    predict

## 💡 Exemple

Ajuster un modele lineaire generalise et predire deux reponses.

```matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitglm(X, y);
yfit = predict(mdl, [7 4; 8 5])
```

## 🔗 Voir aussi

[predict](../../statistics/predict.md), [fitglm](../../statistics/fitglm.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
