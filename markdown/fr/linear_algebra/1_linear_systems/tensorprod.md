# tensorprod

Produits tensoriels entre deux tableaux.

## 📝 Syntaxe

- C = tensorprod(A, B)
- C = tensorprod(A, B, dimA, dimB)
- C = tensorprod(A, B, 'all')
- C = tensorprod(\_\_\_, 'NumDimensionsA', value)

## 📥 Argument d'entrée

- A, B - tableaux numeriques.
- dimA, dimB - vecteurs listant les dimensions de A et de B a contracter. size(A, dimA(k)) doit etre egal a size(B, dimB(k)).
- value - nombre de dimensions de A, utilise pour prendre en compte les dimensions singleton finales.

## 📤 Argument de sortie

- C - produit tensoriel. Ses dimensions sont les dimensions non contractees de A suivies des dimensions non contractees de B.

## 📄 Description

<b>tensorprod(A, B)</b> retourne le produit exterieur de A et de B, un tableau de taille [size(A) size(B)].

<b>tensorprod(A, B, dimA, dimB)</b> contracte (somme les produits sur) les dimensions dimA de A avec les dimensions dimB de B. Pour des matrices, <b>tensorprod(A, B, 2, 1)</b> est le produit matriciel A\*B.

<b>tensorprod(A, B, 'all')</b> contracte toutes les dimensions et retourne le produit interieur complet ; A et B doivent avoir la meme taille.

<b>'NumDimensionsA'</b> precise le nombre de dimensions de A afin de pouvoir contracter les dimensions singleton finales.

## 💡 Exemple

```matlab
A = [1 2; 3 4];
B = [5 6; 7 8];
C = tensorprod(A, B, 2, 1)
```

## 🔗 Voir aussi

[kron](../../linear_algebra/kron.md), [reshape](../../elementary_functions/reshape.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
