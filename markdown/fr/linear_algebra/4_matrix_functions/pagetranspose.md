# pagetranspose

Transposition par page

## 📝 Syntaxe

- Y = pagetranspose(X)

## 📥 Argument d'entrée

- X - tableau N-D.

## 📤 Argument de sortie

- Y - tableau où les deux premières dimensions de chaque page sont transposées.

## 📄 Description


<b>pagetranspose</b> transpose les deux premières dimensions de chaque page du tableau N-D X : Y(:,:,i) = X(:,:,i).'. Les valeurs complexes ne sont pas conjuguées.

## 💡 Exemple



```matlab
X = reshape(1:24, 2, 3, 4);
Y = pagetranspose(X)
```


## 🔗 Voir aussi

[pagectranspose](../../linear_algebra/4_matrix_functions/pagectranspose.md), [pagemtimes](../../linear_algebra/4_matrix_functions/pagemtimes.md), [permute](../../elementary_functions/7_indexing_dimensions/permute.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
