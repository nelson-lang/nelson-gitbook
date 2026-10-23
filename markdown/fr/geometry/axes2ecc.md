# axes2ecc

Excentricité d'une ellipse à partir de ses demi-axes.

## 📝 Syntaxe

- eccentricity = axes2ecc(semimajor, semiminor)
- eccentricity = axes2ecc(axesVector)

## 📥 Argument d'entrée

- semimajor - la longueur du demi-grand axe.
- semiminor - la longueur du demi-petit axe.
- axesVector - une entrée unique : un vecteur à deux éléments [semimajor, semiminor] ou une matrice à deux colonnes (une ellipse par ligne).

## 📤 Argument de sortie

- eccentricity - l'excentricité de l'ellipse.

## 📄 Description


<b>axes2ecc</b> renvoie l'excentricité d'une ellipse à partir de ses demi-grand et demi-petit axes, soit <b>sqrt(1 - (semiminor / semimajor)^2)</b>. Un cercle (axes égaux) a une excentricité nulle. Le calcul est vectorisé sur les entrées.

## 💡 Exemple



```matlab
e = axes2ecc(10, 6)
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
