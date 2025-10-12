# tzero

Zéros invariants d'un système linéaire.

## Syntaxe

- z = tzero(sys)
- z = tzero(A, B, C, D)
- z = tzero(A, B, C, D, E)
- [z, nrank] = tzero(sys)
- [z, nrank] = tzero(A, B, C, D)
- [z, nrank] = tzero(A, B, C, D, E)

## Argument d'entrée

- sys - un modèle LTI.
- A - Matrice d'état : matrice Nx par Nx.
- B - Matrice entrée-état : matrice Nx par Nu.
- C - Matrice état-sortie : matrice Ny par Nx.
- D - Feedthrough matrix: Ny-by-Nu matrix.
- E - Matrice Nx par Nx.

## Argument de sortie

- Z - Invariant zeros: column vector.
- nrank - Normal rank: positive integer.

## Description

<p>Calcule les zéros invariants d'un système d'état ou renvoie également le rang numérique associé.</p>

## Exemple

```matlab
A = [1 2; 3 4];
B = [1; 0];
C = [1 0];
D = 0;
sys = ss(A, B, C, D);
z = tzero(sys)
[z, nrank] = tzero(sys)
```

## Voir aussi

[append](../control_system/append.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
