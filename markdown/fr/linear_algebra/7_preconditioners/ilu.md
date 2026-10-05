# ilu

Factorisation LU incomplete.

## 📝 Syntaxe

- LU = ilu(A)
- LU = ilu(A, opts)
- [L, U] = ilu(A)
- [L, U] = ilu(A, opts)
- [L, U, P] = ilu(A, opts)

## 📥 Argument d'entrée

- A - une matrice carree sparse flottante reelle ou complexe.
- opts - une structure scalaire avec les champs optionnels type, droptol, fillfactor, udiag et thresh.

## 📤 Argument de sortie

- LU - facteur sparse unique contenant la partie strictement inferieure de <b>L</b> et la partie superieure de <b>U</b>.
- L - facteur sparse triangulaire inferieur LU incomplet.
- U - facteur sparse triangulaire superieur LU incomplet.
- P - matrice sparse de permutation de lignes. Quand elle est retournee, <b>P \* A</b> est approximee par <b>L \* U</b>.

## 📄 Description


<b>ilu</b> calcule des facteurs LU incomplets sparse utilisables comme preconditionneurs. 

<b>opts.type</b> peut valoir 'nofill' ou 'ilutp'. La valeur par defaut est 'nofill', qui conserve le motif sparse d'entree et n'applique pas de seuil de suppression. 

En mode 'ilutp', <b>opts.droptol</b> supprime les petites entrees, <b>opts.fillfactor</b> limite le remplissage conserve par ligne, <b>opts.udiag</b> autorise les pivots nuls, et <b>opts.thresh</b> est un seuil de pivotage entre 0 et 1. Les valeurs par defaut sont <b>droptol = 1e-4</b>, <b>fillfactor = 10</b>, <b>udiag = false</b> et <b>thresh = 1</b>. 

Le mode 'ilutp' utilise un pivotage sparse par lignes. Avec trois sorties, <b>P</b> contient la permutation de lignes et <b>P \* A</b> est approximee par <b>L \* U</b>. Avec une sortie, le facteur sparse compacte stocke la partie strictement inferieure de <b>L</b> et la partie superieure de <b>U</b>. 

Les valeurs textuelles d'options comme <b>opts.type</b> peuvent etre des vecteurs lignes de caracteres ou des string scalars. 

Les matrices sparse double, single, double complexes et single complexes sont prises en charge. Les facteurs <b>L</b> et <b>U</b> conservent la classe numerique d'entree ; <b>P</b> est une matrice sparse de permutation. 

Les facteurs peuvent etre utilises directement comme preconditionneurs pour les solveurs de Krylov tels que <b>gmres</b>, <b>bicgstab</b>, <b>bicg</b>, <b>cgs</b> et <b>qmr</b>. 

Les pivots nuls non autorises, les options invalides et les matrices non carrees sont rejetes avant de retourner des facteurs incomplets.

## Fonction(s) utilisée(s)

Routines sparse Nelson

## 💡 Exemples



```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
LU = ilu(A)
full(LU)

```


```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[L, U] = ilu(A)
full(L * U)

```


```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[L, U] = ilu(A);
x = bicgstab(A, b, 1e-12, 20, L, U)

```
Factorisation ILUTP sparse single complexe.

```matlab
A = sparse(single([4 1i; 2 3]));
opts.type = 'ilutp';
opts.droptol = 0;
[L, U, P] = ilu(A, opts)
full(P * A - L * U)
```
Controler le pivotage et le remplissage conserve en mode avec seuil.

```matlab
A = sparse([0.2 1; 1 1]);
opts.type = 'ilutp';
opts.droptol = 0;
opts.fillfactor = 10;
opts.thresh = 0.25;
[L, U, P] = ilu(A, opts);
full(P * A - L * U)

```


## 🔗 Voir aussi

[bicgstab](../../linear_algebra/6_iterative_solvers/bicgstab.md), [gmres](../../linear_algebra/6_iterative_solvers/gmres.md), [qmr](../../linear_algebra/6_iterative_solvers/qmr.md), [lu](../../linear_algebra/2_decompositions/lu.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | prise en charge des matrices sparse single et sparse single complexes, du mode ilutp, du pivotage, des options string scalar et de l'utilisation comme preconditionneur. |

<!--
## 👤 Auteur

Allan CORNET
-->
