# isbanded

Détermine si une matrice est dans une largeur de bande spécifique.

## 📝 Syntaxe

- tf = isbanded(A, lower, upper)

## 📥 Argument d'entrée

- A - matrice d'entrée
- lower, upper - largeur de bande inférieure : lower, et largeur de bande supérieure : upper, de la matrice A.

## 📤 Argument de sortie

- tf - logique

## 📄 Description


<b>tf = isbanded(A, lower, upper)</b> retourne <b>true</b> si la matrice <b>A</b> est dans la largeur de bande inférieure spécifiée <b>lower</b> et la largeur de bande supérieure <b>upper</b>.

## 💡 Exemple



```matlab
M = [1 0 0 0 0; 2 1 0 0 0; 3 2 1 0 0]
TF = isbanded(M, 2, 0)
TF = isbanded(M, 2, 1)

```


## 🔗 Voir aussi

[bandwidth](../../linear_algebra/5_matrix_properties/bandwidth.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
