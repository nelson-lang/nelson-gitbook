# ClassificationECOC

Modele de classification par codes correcteurs d'erreurs.

## 📝 Syntaxe

- mdl = fitcecoc(X, Y)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📥 Argument d'entrée

- X - matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
- Y - vecteur : etiquettes de classes, une etiquette pour chaque ligne de X.
- Name, Value - arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

## 📤 Argument de sortie

- mdl - objet modele de classification renvoye par la fonction d'ajustement.
- label - etiquettes de classes predites pour de nouvelles observations.
- score - scores de classes ou valeurs apparentees aux probabilites a posteriori lorsque le modele les fournit.

## 📄 Description

ClassificationECOC stocke un classifieur multiclasses represente par un ensemble d'apprenants binaires et un codage.

Creez cet objet avec fitcecoc. Utilisez predict pour classer de nouvelles observations.

## Fonction(s) utilisée(s)

    fitcecoc
    predict

## 💡 Exemple

Entrainer un classifieur multiclasses et classer trois observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5; 9 0; 9 1; 8 0];
Y = [1; 1; 1; 2; 2; 2; 3; 3; 3];
mdl = fitcecoc(X, Y);
label = predict(mdl, [0.2 0.1; 5.2 5.1; 8.8 0.2])
```

## 🔗 Voir aussi

[predict](../../statistics/predict.md), [fitcecoc](../../statistics/fitcecoc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
