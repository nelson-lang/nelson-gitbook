# mustBeNonmissing

Vérifie que la valeur n'est pas manquante ou renvoie une erreur.

## 📝 Syntaxe

- mustBeNonmissing(var)
- mustBeNonmissing(var, argPosition)
- C++: void mustBeNonmissing(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode ismissing.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeNonmissing(var)</b> vérifie que la valeur de <i>var</i> n'est pas manquante

## 💡 Exemple

```matlab
mustBeNonmissing(1)
mustBeNonmissing([])
mustBeNonmissing(["hello" string(NaN)])

```

## 🔗 Voir aussi

[ismissing](../data_analysis/ismissing.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
