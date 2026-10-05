# ipermute

Inverse de permute

## 📝 Syntaxe

- R = ipermute(A, order)

## 📥 Argument d'entrée

- A - an array.
- order - Dimension order: vecteur de permutation

## 📤 Argument de sortie

- R - result array rearranged with new dimension order.

## 📄 Description


<b>ipermute</b> permute les dimensions d'un tableau (dans l'ordre inverse de <b>permute</b>).

## 💡 Exemple



```matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
x2 = ipermute(y,[3 1 2])
```


## 🔗 Voir aussi

[permute](../../elementary_functions/7_indexing_dimensions/permute.md), [reshape](../../elementary_functions/1_array_creation_shape/reshape.md), [transpose](../../operators/transpose.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
