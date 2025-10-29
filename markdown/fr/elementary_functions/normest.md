# normest

2-norm estimate

## 📝 Syntaxe

- nrm = normest(A)
- [nrm, count] = normest(A)
- nrm = normest(A, tolerance)
- [nrm, count] = normest(A, tolerance)

## 📥 Argument d'entrée

- A - Input matrix
- tolerance - Relative error tolerance

## 📤 Argument de sortie

- nrm - Matrix norm: scalar.
- count - Number of power iterations: scalar.

## 📄 Description

<b>nrm = normest(A)</b> returns an estimate of the 2-norm of the matrix <b>A</b>.

## 💡 Exemple

```matlab
M = [    0    2.4495         0         0         0         0         0
    2.4495         0    3.1623         0         0         0         0
         0    3.1623         0    3.4641         0         0         0
         0         0    3.4641         0    3.4641         0         0
         0         0         0    3.4641         0    3.1623         0
         0         0         0         0    3.1623         0    2.4495
         0         0         0         0         0    2.4495         0];
[nrm, count] = normest(M)
norm(M)


```

## 🔗 Voir aussi

[norm](../elementary_functions/norm.md), [svd](../linear_algebra/svd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
