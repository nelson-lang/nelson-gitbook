# full

Conversion de matrice sparse vers pleine.

## 📝 Syntaxe

- M = full(sp)

## 📥 Argument d'entrée

- sp - une matrice : double ou logique, sparse.

## 📤 Argument de sortie

- M - une matrice.

## 📄 Description


<b>full</b> convertit une matrice sparse en sa représentation pleine. 

Si l'argument d'entrée est déjà plein, alors l'argument de sortie sera égal à l'argument d'entrée.

## 💡 Exemple



```matlab
sp = sparse(eye(3,3))
F = full(sp)
```


## 🔗 Voir aussi

[sparse](../sparse/sparse.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
