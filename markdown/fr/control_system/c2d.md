# c2d

Convertit le modèle du temps continu au temps discret.

## Syntaxe

- [P, G] = c2d(A, B, Ts)
- sysd = c2d(sysc, Ts)
- sysd = c2d(sysc, Ts, method)
- sysd = c2d(sysc, Ts, 'prewarp', w0)

## Argument d'entrée

- A - Matrice d'état : matrice Nx-par-Nx.
- B - Input-to-state matrix: Nx-by-Nu matrix.
- Ts - Sample time: positive scalar.
- sysc - Continuous-time dynamic system: LTI model.
- method - Méthode de discrétisation : 'zoh', 'tustin', 'prewarp'
- w0 - prewarp frequency.

## Argument de sortie

- P - phi
- G - gamma
- sysd - Discrete-time model

## Description

<p>The function sysd = c2d(sysc, Ts) discretizes the continuous-time dynamic system model sysc using a zero-order hold on the inputs with a sample time of Ts.</p>

<p>For instance, you can use sysd = c2d(sysc, Ts, method) to explicitly specify the discretization method.</p>

## Exemple

```matlab
A = [1  0.5; 0.5  1 ];
B = [0 -1; 1  0 ];
C = [ -1  0; 0  1 ];
D = [  1  0; 0 -1 ];
sys = ss(A, B, C, D);
Ts = 2;
sysd = c2d(sys, Ts, 'zoh')

```

## Voir aussi

[d2c](../control_system/d2c.md), [ss](../control_system/ss.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
