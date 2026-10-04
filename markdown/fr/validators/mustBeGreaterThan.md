# mustBeGreaterThan

Vérifie que la valeur est supérieure à une autre valeur ou signale une erreur.

## 📝 Syntaxe

- mustBeGreaterThan(var, c)
- mustBeGreaterThan(var, c, argPosition)
- C++: void mustBeGreaterThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tableau de tout type supportant l'opérateur de comparaison (numérique, logique, char, string, ...). Une valeur vide est toujours acceptée.
- c - une variable : scalaire ou tableau de taille compatible avec var (expansion implicite).
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeGreaterThan</b> vérifie que la valeur est supérieure à une autre valeur ou signale une erreur.

## 💡 Exemples

```matlab
mustBeGreaterThan(1, 0)
mustBeGreaterThan([2 3 4],2)
```

Comparaison avec un tableau de taille compatible

```matlab
upper = [5 10 15];
mustBeGreaterThan([6 11 16], upper - 1)
mustBeGreaterThan([6 11 16], upper)
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
