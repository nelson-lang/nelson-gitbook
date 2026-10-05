# mustBeLessThanOrEqual

Vérifie qu'une valeur est inférieure ou égale à une autre valeur, sinon émet une erreur.

## 📝 Syntaxe

- mustBeLessThanOrEqual(var, c)
- mustBeLessThanOrEqual(var, c, argPosition)
- C++: void mustBeLessThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tableau de tout type supportant l'opérateur de comparaison (numérique, logique, char, string, ...). Une valeur vide est toujours acceptée.
- c - une variable : scalaire ou tableau de taille compatible avec var (expansion implicite).
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description


<b>mustBeLessThanOrEqual</b> vérifie qu'une valeur est inférieure ou égale à une autre valeur, sinon émet une erreur.

## 💡 Exemples



```matlab
mustBeLessThanOrEqual(1, 0)
mustBeLessThanOrEqual([2 3 4],2)
```
Comparaison avec un tableau de taille compatible

```matlab
upper = [1; 2];
mustBeLessThanOrEqual([0 1; 2 2], upper)
mustBeLessThanOrEqual([0 1; 2 3], upper)
```


## 🔗 Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | c peut être un tableau de taille compatible avec var ; les entrées ne sont plus limitées aux valeurs numériques réelles ou logiques. |

<!--
## 👤 Auteur

Allan CORNET
-->
