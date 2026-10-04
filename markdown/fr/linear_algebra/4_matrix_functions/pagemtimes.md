# pagemtimes

Multiplication matricielle par page

## 📝 Syntaxe

- C = pagemtimes(A, B)
- C = pagemtimes(A, transpA, B, transpB)

## 📥 Argument d'entrée

- A - tableau dont les pages sont des matrices.
- B - tableau dont les pages sont des matrices.
- transpA - transformation appliquée aux pages de A : 'none', 'transpose' ou 'ctranspose'.
- transpB - transformation appliquée aux pages de B : 'none', 'transpose' ou 'ctranspose'.

## 📤 Argument de sortie

- C - tableau dont les pages sont les produits matriciels des pages de A et B.

## 📄 Description

<b>pagemtimes</b> multiplie les pages (les deux premières dimensions) des tableaux N-D A et B. C(:,:,i) = A(:,:,i) \* B(:,:,i). Les arguments de transformation optionnels transposent ou transposent-conjuguent chaque page avant la multiplication. Si une entrée n'a qu'une seule page, elle est diffusée sur les pages de l'autre.

## 💡 Exemple

```matlab
A = reshape(1:24, 2, 3, 4);
B = reshape(1:24, 3, 2, 4);
C = pagemtimes(A, B)
```

## 🔗 Voir aussi

[pagetranspose](../../linear_algebra/pagetranspose.md), [pageinv](../../linear_algebra/pageinv.md), [mtimes](../../operators/mtimes.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
