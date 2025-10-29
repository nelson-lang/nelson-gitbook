# iscolumn

Déterminer si l'entrée est un vecteur colonne.

## 📝 Syntaxe

- tf = iscolumn(V)

## 📥 Argument d'entrée

- V - une variable

## 📤 Argument de sortie

- tf - booléen : résultat de 'iscolumn'.

## 📄 Description

<b>iscolumn(V)</b> renvoie <b>true</b> si size(V) renvoie [n, 1] avec un entier non négatif n, et <b>false</b> sinon.

## 💡 Exemple

```matlab
iscolumn([1:4])
iscolumn([1:4]')
```

## 🔗 Voir aussi

[isrow](../elementary_functions/isrow.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
