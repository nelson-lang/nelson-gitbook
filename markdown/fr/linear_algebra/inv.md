# inv

Inverse de matrice.

## 📝 Syntaxe

- res = inv(x)

## 📥 Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

## 📤 Argument de sortie

- res - une valeur numérique : une matrice carrée

## 📄 Description

<b>inv(x)</b> calcule l'inverse de la matrice x.

## 💡 Exemple

```matlab
X = rand(10, 10);
Y = inv(X);
Y * X

```

## 🔗 Voir aussi

[expm](../linear_algebra/expm.md).

## 🕔 Historique

| Version | 📄 Description                                          |
| ------- | ------------------------------------------------------- |
| 1.0.0   | version initiale                                        |
| 1.4.0   | warning about 'Matrix is singular to working precision' |

<!--
## 👤 Auteur

Allan CORNET
-->
