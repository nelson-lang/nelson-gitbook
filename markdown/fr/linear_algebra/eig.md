# eig

Valeurs propres et vecteurs propres.

## 📝 Syntaxe

- e = eig(A)
- [V, D] = eig(A)
- e = eig(A, balanceOption)
- [V, D] = eig(A, balanceOption)
- e = eig(A, B)
- [V, D] = eig(A, B)
- e = eig(A, B, balanceOption)
- [V, D] = eig(A, B, balanceOption)

## 📥 Argument d'entrée

- A - a numeric value: scalar or square matrix (double or single, complex or real)
- B - a numeric value: scalar or square matrix (double or single, complex or real)
- balanceOption - a string: 'nobalance' (disable preliminary balancing) or 'balance' (default).

## 📤 Argument de sortie

- e - real or complex number (double or single), Eigenvalues (returned as column vector).
- V - real or complex number (double or single), square right eigenvectors.
- D - real or complex number (double or single), Eigenvalues (returned as diagonal matrix).

## 📄 Description

<b>eig(A)</b> retourne les valeurs propres et vecteurs propres.

Pour une matrice carrée <b>A</b>, les valeurs propres
$$\lambda$$

et vecteurs propres
$$\mathbf{v}$$

satisfont :
$$A\mathbf{v} = \lambda\mathbf{v}$$

L'équation caractéristique est :
$$\det(A - \lambda I) = 0$$

<b>eig(A, B)</b> retourne les valeurs propres généralisées et vecteurs propres où :
$$A\mathbf{v} = \lambda B\mathbf{v}$$

## 📚 Bibliographie

[1] Anderson, E., Z. Bai, C. Bischof, S. Blackford, J. Demmel, J. Dongarra, J. Du Croz, A. Greenbaum, S. Hammarling, A. McKenney, and D. Sorensen, LAPACK User's Guide (http://www.netlib.org/lapack/lug/ lapack_lug.html), Third Edition, SIAM, Philadelphia, 1999.

## 💡 Exemples

```matlab
A = [10 -20 40; -50 20 0; 10 0 30]
e = eig(A)
[V, D] = eig(A)

```

```matlab
A = [1/sqrt(2) 0; 0 1];
B = [0 1; -1/sqrt(2) 0];
[V, D] = eig(A, B)

```

## 🔗 Voir aussi

[svd](../linear_algebra/svd.md), [schur](../linear_algebra/schur.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
