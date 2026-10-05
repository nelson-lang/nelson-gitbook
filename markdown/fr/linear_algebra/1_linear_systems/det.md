# det

Déterminant d'une matrice.

## 📝 Syntaxe

- res = det(x)

## 📥 Argument d'entrée

- x - une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

## 📤 Argument de sortie

- res - real or complex number (double or single), the determinant base 10.

## 📄 Description


<b>res = det(x)</b> retourne le déterminant de la matrice carrée x. 

Les matrices sparse single et sparse single complexes sont prises en charge. Le resultat conserve la precision single lorsque l'entree est single.

## 💡 Exemples



```matlab
A = [10 -20 40; -50 20 0; 10 0 30]
D = det(A)

```
Determinant d'une matrice sparse single.

```matlab
A = sparse(single([4 1; 2 3]));
D = det(A)
```


## 🔗 Voir aussi

[rcond](../../linear_algebra/5_matrix_properties/rcond.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | prise en charge des matrices sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
