# lqe

Conception d'un estimateur de Kalman pour systèmes en temps continu.

## 📝 Syntaxe

- [L, P, E] = lqe(A, G, C, Q, R, N)
- [L, P, E] = lqe(A, G, C, Q, R)

## 📥 Argument d'entrée

- A - Matrice d'état: matrice n x n.
- G - Définit une matrice reliant le bruit de processus aux états.
- C - La matrice de sortie, avec des dimensions (q x n), où q est le nombre de sorties.
- Q - Matrice de pondération du coût d'état
- R - Matrice de pondération du coût d'entrée
- N - Matrice de terme croisé facultative: 0 par défaut.

## 📤 Argument de sortie

- L - Matrice de gain de Kalman.
- P - Solution de l'équation de Riccati algébrique discrète.
- E - Emplacements des pôles en boucle fermée

## 📄 Description

La fonction calcule le gain optimal de l'estimateur (L), la matrice de covariance d'état (P) et les valeurs propres associées pour un système continu.

## 💡 Exemple

```matlab
c = 1;
m = 1;
k = 1;
A = [0, 2; -k/m, -c/m];
B = [0; 2/m];
G = [2 0 ; 0 2];
C = [2 0];
Q = [0.02 0; 0 0.02];
R = 0.02;
[l, p, e] = lqe(A, G, C, Q, R)
```

## 🔗 Voir aussi

[lqr](../control_system/lqr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
