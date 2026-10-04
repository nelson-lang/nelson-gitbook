# ndims

Nombre de dimensions d'un tableau.

## 📝 Syntaxe

- n = ndims(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- n - une valeur entière : nombre de dimensions de M.

## 📄 Description

<b>n = ndims(M)</b> renvoie le nombre de dimensions du tableau<b>M</b>.

<b>M</b> est supérieur ou égal à 2.

## 💡 Exemple

```matlab
ndims(ones(3, 0))
ndims(3)
ndims([1 2 3 4 5])
ndims(ones(3, 4, 5))
```

## 🔗 Voir aussi

[size](../../elementary_functions/size.md), [length](../../elementary_functions/length.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
