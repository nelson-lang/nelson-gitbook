# pagectranspose

Transposée conjuguée par page

## 📝 Syntaxe

- Y = pagectranspose(X)

## 📥 Argument d'entrée

- X - tableau N-D.

## 📤 Argument de sortie

- Y - tableau où chaque page est remplacée par sa transposée conjuguée.

## 📄 Description


<b>pagectranspose</b> applique la transposée conjuguée aux deux premières dimensions de chaque page du tableau N-D X : Y(:,:,i) = X(:,:,i)'.

## 💡 Exemple



```matlab
X = reshape((1:8) + 1i, 2, 2, 2);
Y = pagectranspose(X)
```


## 🔗 Voir aussi

[pagetranspose](../../linear_algebra/4_matrix_functions/pagetranspose.md), [pagemtimes](../../linear_algebra/4_matrix_functions/pagemtimes.md), [ctranspose](../../operators/ctranspose.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
