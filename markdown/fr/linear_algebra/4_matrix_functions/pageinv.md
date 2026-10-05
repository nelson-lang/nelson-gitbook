# pageinv

Inverse matriciel par page

## 📝 Syntaxe

- Y = pageinv(X)

## 📥 Argument d'entrée

- X - tableau N-D dont les pages sont des matrices carrées.

## 📤 Argument de sortie

- Y - tableau où chaque page est l'inverse de la page correspondante de X.

## 📄 Description


<b>pageinv</b> calcule l'inverse de chaque page (les deux premières dimensions) du tableau N-D X : Y(:,:,i) = inv(X(:,:,i)). Chaque page doit être une matrice carrée.

## 💡 Exemple



```matlab
M = cat(3, [2 0; 0 4], [1 2; 3 4]);
Y = pageinv(M)
```


## 🔗 Voir aussi

[inv](../../linear_algebra/1_linear_systems/inv.md), [pagemtimes](../../linear_algebra/4_matrix_functions/pagemtimes.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
