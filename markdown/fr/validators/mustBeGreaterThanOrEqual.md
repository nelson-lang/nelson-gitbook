# mustBeGreaterThanOrEqual

Vérifie que la valeur est supérieure ou égale à une autre valeur ou signale une erreur.

## 📝 Syntaxe

- mustBeGreaterThanOrEqual(var, c)
- mustBeGreaterThanOrEqual(var, c, argPosition)
- C++: void mustBeGreaterThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tableau de tout type supportant l'opérateur de comparaison (numérique, logique, char, string, ...). Une valeur vide est toujours acceptée.
- c - une variable : scalaire ou tableau de taille compatible avec var (expansion implicite).
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeGreaterThanOrEqual</b> vérifie que la valeur est supérieure ou égale à une autre valeur ou signale une erreur.

## 💡 Exemples

```matlab
mustBeGreaterThanOrEqual(1, 0)
mustBeGreaterThanOrEqual([2 3 4],5)
```

Comparaison avec un tableau de taille compatible

```matlab
lower = [1; 2];
mustBeGreaterThanOrEqual([1 2 3; 2 3 4], lower)
mustBeGreaterThanOrEqual([1 2 3; 1 3 4], lower)
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
