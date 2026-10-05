# hess

Forme de Hessenberg d'une matrice carree.

## 📝 Syntaxe

- H = hess(A)
- [P, H] = hess(A)

## 📥 Argument d'entrée

- A - matrice numerique carree.

## 📤 Argument de sortie

- H - matrice de Hessenberg superieure semblable a A.
- P - matrice de transformation unitaire verifiant A = P \* H \* P'.

## 📄 Description


hess reduit une matrice numerique carree en forme de Hessenberg superieure par transformations unitaires de similarite. 

Avec deux sorties, hess renvoie aussi la matrice de transformation accumulee P telle que A = P \* H \* P'.

## Fonction(s) utilisée(s)


    LAPACK
  

## 💡 Exemple

Calculer une forme de Hessenberg et verifier le residu de similarite.

```matlab
A = [1 2 3; 4 5 6; 7 8 10];
[P, H] = hess(A);
residual = norm(A - P * H * transpose(P), 'fro')
```


## 🔗 Voir aussi

[schur](../../linear_algebra/3_eigen_singular_values/schur.md), [eig](../../linear_algebra/3_eigen_singular_values/eig.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
