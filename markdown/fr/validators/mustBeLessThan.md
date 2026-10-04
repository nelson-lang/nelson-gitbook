# mustBeLessThan

Vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.

## 📝 Syntaxe

- mustBeLessThan(var, c)
- mustBeLessThan(var, c, argPosition)
- C++: void mustBeLessThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tableau de tout type supportant l'opérateur de comparaison (numérique, logique, char, string, ...). Une valeur vide est toujours acceptée.
- c - une variable : scalaire ou tableau de taille compatible avec var (expansion implicite).
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeLessThan</b> vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.

## 💡 Exemples

```matlab
mustBeLessThan(1, 0)
mustBeLessThan(1, 2)
```

Comparaison avec un tableau de taille compatible

```matlab
upper = [5 10 15];
mustBeLessThan([4 9 14], upper)
mustBeLessThan([4 9 15], upper)
```

## 🔗 Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 Historique

| Version | 📄 Description                                                                                                                       |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| 1.0.0   | version initiale                                                                                                                     |
| 2.0.0   | c peut être un tableau de taille compatible avec var ; les entrées ne sont plus limitées aux valeurs numériques réelles ou logiques. |

<!--
## 👤 Auteur

Allan CORNET
-->
