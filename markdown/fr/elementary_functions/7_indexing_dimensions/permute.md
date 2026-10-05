# permute

Permute les dimensions d'un tableau.

## 📝 Syntaxe

- R = permute(A, order)

## 📥 Argument d'entrée

- A - un tableau.
- order - ordre des dimensions : vecteur ligne

## 📤 Argument de sortie

- R - tableau résultat réorganisé selon le nouvel ordre des dimensions.

## 📄 Description


<b>permute</b> permute les dimensions d'un tableau.

## 💡 Exemple



```matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
```


## 🔗 Voir aussi

[ipermute](../../elementary_functions/7_indexing_dimensions/ipermute.md), [reshape](../../elementary_functions/1_array_creation_shape/reshape.md), [transpose](../../operators/transpose.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
