# ClassificationEnsemble

Modele d'ensemble pour la classification.

## 📝 Syntaxe

- mdl = fitcensemble(X, Y)
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

ClassificationEnsemble stocke un modele de classification qui combine plusieurs apprenants faibles.

Creez cet objet avec fitcensemble. Utilisez predict pour agreger les reponses des apprenants sur de nouvelles observations.

## Fonction(s) utilisée(s)

    fitcensemble
    predict

## 💡 Exemple

Entrainer un petit ensemble de classification et classer deux observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcensemble(X, Y, 'NumLearningCycles', 3);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
```

## 🔗 Voir aussi

[predict](../../statistics/predict.md), [fitcensemble](../../statistics/fitcensemble.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
