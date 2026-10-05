# spalloc

Cree une matrice sparse avec stockage reserve.

## 📝 Syntaxe

- S = spalloc(m, n, nz)

## 📥 Argument d'entrée

- m - nombre de lignes.
- n - nombre de colonnes.
- nz - stockage demande pour les elements non nuls.

## 📤 Argument de sortie

- S - une matrice sparse double.

## 📄 Description


<b>spalloc</b> cree une matrice sparse double m-par-n et reserve du stockage pour au plus <b>nz</b> elements non nuls.

## 💡 Exemple



```matlab
S = spalloc(3, 4, 5)
nzmax(S)
```


## 🔗 Voir aussi

[sparse](../sparse/sparse.md), [nzmax](../sparse/nzmax.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
