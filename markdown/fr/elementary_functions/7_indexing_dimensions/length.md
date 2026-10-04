# length

Longueur d'un objet.

## 📝 Syntaxe

- l = length(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- l - la longueur de la plus grande dimension du tableau M.

## 📄 Description

Pour une matrice ou un tableau à N dimensions,<b>length</b> renvoie le nombre d'éléments le long de la plus grande dimension. Pour un objet vide, <b>length</b> renvoie 0. Pour un scalaire,<b>length</b> renvoie 1. Pour un vecteur,<b>length</b> renvoie le nombre d'éléments.

## 💡 Exemple

```matlab
length(ones(3, 0))
length(3)
length([1 2 3 4 5])
length(ones(3, 4, 5))
```

## 🔗 Voir aussi

[size](../../elementary_functions/size.md), [numel](../../elementary_functions/numel.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
