# rref

Élimination de Gauss-Jordan (forme échelonnée réduite).

## 📝 Syntaxe

- R = rref(A)
- R = rref(A, tol)
- [R, p] = rref(A)
- [R, p] = rref(A, tol)

## 📥 Argument d'entrée

- A - matrice d'entrée (double ou simple précision)
- tol - tolérance : scalaire ou max(rows, cols) \* eps(class(A)) \* norm(A, inf) (par défaut)

## 📤 Argument de sortie

- R - une matrice : forme échelonnée réduite de A.
- p - un vecteur : colonnes pivots non nulles.

## 📄 Description


<b>R = rref(A)</b> retourne la forme échelonnée réduite par lignes de <b>A</b>. 

<b>[R, p] = rref(A)</b> retourne également les pivots non nuls <b>p</b>.

## 📚 Bibliographie

https://en.wikipedia.org/wiki/Gaussian_elimination

## 💡 Exemple



```matlab
A = [magic(4), eye(4)]
[R, p] = rref(A)
```


## 🔗 Voir aussi

[rank](../../linear_algebra/1_linear_systems/rank.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
