# lqed

Calcule l'estimateur de Kalman discret basé sur un critère de coût continu.

## Syntaxe

- [L, P, Z, E] = LQED(A, G, C, Q, R, Ts)

## Argument d'entrée

- A - État matrice : matrice n x n.
- G - Définit une matrice reliant le bruit de processus aux états.
- C - La matrice de sortie, avec des dimensions (q x n), où q est le nombre de sorties.
- Q - Matrice de pondération des coûts d'état
- R - Matrice de pondération des coûts d'entrée
- N - Matrice de terme croisé en option : 0 par défaut.
- Ts - temps d'échantillonnage : scalaire.

## Argument de sortie

- L - Matrice de gain de Kalman.
- P - Solution de l'équation de Riccati algébrique discrète.
- E - Emplacements des pôles en boucle fermée
- Z - Pôles de l'estimateur discret

## Description

<p>La fonction détermine la configuration discrète de l'estimateur de Kalman à partir d'un coût quadratique continu pour le bruit de processus et de mesure.</p>

## Exemple

```matlab
A = [10     1.2;  3.3     4];
B = [5     0;   0     6];
C = B;
D = [0,0;0,0];
R = [2,0;0,3];
Q = [5,0;0,4];
G = [6,0;0,7];
Ts = 0.004;

[L, P, Z, E] = lqed(A, G, C, Q, R, Ts)
```

## Voir aussi

[lqr](../control_system/lqr.md), [lqe](../control_system/lqe.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
