# kron

Produit tensoriel de Kronecker.

## 📝 Syntaxe

- K = kron(A, B)

## 📥 Argument d'entrée

- A - une matrice : scalaires, vecteurs ou matrices.
- B - une matrice : scalaires, vecteurs ou matrices.

## 📤 Argument de sortie

- K - résultat : produit tensoriel de Kronecker.

## 📄 Description


<b>K = kron(A, B)</b> calcule le produit tensoriel de Kronecker des matrices<b>A</b> et <b>B</b>. 

Pour des matrices 
$$A$$
 

de taille 
$$m \times n$$
 

et 
$$B$$
 

de taille 
$$p \times q$$
 

, le produit de Kronecker est : 
$$A \otimes B = \begin{pmatrix} a_{11}B & a_{12}B & \cdots & a_{1n}B \\ a_{21}B & a_{22}B & \cdots & a_{2n}B \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1}B & a_{m2}B & \cdots & a_{mn}B \end{pmatrix}$$
 

Le résultat est une matrice 
$$mp \times nq$$
 

.

## 📚 Bibliographie

https://en.wikipedia.org/wiki/Kronecker_product

## 💡 Exemple



```matlab
A = [1, 2; 3, 4];
B = [0, 5; 6, 7];
K = kron(A, B)

```


## 🔗 Voir aussi

[cross](../../special_functions/cross.md), [hankel](../../elementary_functions/6_matrix_generation/hankel.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
