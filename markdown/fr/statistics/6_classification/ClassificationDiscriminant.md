# ClassificationDiscriminant

Modele de classification par analyse discriminante.

## 📝 Syntaxe

- mdl = fitcdiscr(X, Y)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📥 Argument d'entrée

- X - matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
- Y - vecteur : etiquettes de classes, une etiquette pour chaque ligne de X.
- Name, Value - arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

## 📤 Argument de sortie

- mdl - objet modele de classification renvoye par la fonction d'ajustement.
- label - etiquettes de classes predites pour de nouvelles observations.
- score - scores de classes ou valeurs apparentees aux probabilites a posteriori lorsque le modele les fournit.

## 📄 Description


ClassificationDiscriminant stocke un classifieur par analyse discriminante entraine a partir de predicteurs et d'etiquettes de classes. 

Creez cet objet avec fitcdiscr. Utilisez predict pour classer de nouvelles observations lorsque le modele prend en charge la prediction.

## Fonction(s) utilisée(s)


    fitcdiscr
    predict
  

## 💡 Exemple

Entrainer un classifieur discriminant et classer deux observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcdiscr(X, Y);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 Voir aussi

[predict](../../statistics/5_regression/predict.md), [fitcdiscr](../../statistics/6_classification/fitcdiscr.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
