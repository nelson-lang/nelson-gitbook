# trace

Trace d'une matrice.

## 📝 Syntaxe

- res = trace(x)

## 📥 Argument d'entrée

- x - une valeur numérique : scalaire ou matrice (double ou simple précision)

## 📤 Argument de sortie

- res - une valeur numérique : un scalaire

## 📄 Description

<b>trace(x)</b> calcule la trace de x, la somme des éléments sur la diagonale principale.

Les matrices sparse single et sparse single complexes sont prises en charge. Seules les valeurs de la diagonale contribuent a la somme et la precision de l'entree est preservee.

## 💡 Exemples

```matlab
X = [1 0; 0 3];
Y = trace(X)
```

Trace d'une matrice sparse single.

```matlab
X = sparse(single([1 0; 0 3]));
Y = trace(X)
```

## 🔗 Voir aussi

[eig](../../linear_algebra/eig.md).

## 🕔 Historique

| Version | 📄 Description                                                         |
| ------- | ---------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                       |
| 2.0.0   | prise en charge des matrices sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
