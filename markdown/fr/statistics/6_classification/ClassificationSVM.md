# ClassificationSVM

Modele de classification par machine a vecteurs de support.

## 📝 Syntaxe

- mdl = fitcsvm(X, Y)
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

ClassificationSVM stocke un classifieur a vecteurs de support, notamment les vecteurs support, les informations de noyau et les donnees de classes.

Creez cet objet avec fitcsvm. Utilisez predict pour classer de nouvelles observations.

## Fonction(s) utilisée(s)

    fitcsvm
    predict

## 💡 Exemple

Entrainer un classifieur binaire a vecteurs de support et classer deux observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcsvm(X, Y, 'KernelFunction', 'linear');
label = predict(mdl, [0.2 0.1; 5.2 5.1])
```

## 🔗 Voir aussi

[predict](../../statistics/predict.md), [fitcsvm](../../statistics/fitcsvm.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
