# ss2tf

Convertit une représentation état-espace en fonction de transfert.

## Syntaxe

- [b, a] = ss2tf(A, B, C, D)
- [b, a] = ss2tf(A, B, C, D, ni)

## Argument d'entrée

- A (n x n) - Represente la matrice de transition d'état du système. Elle décrit comment l'état interne du système évolue dans le temps.
- B (n x m) - Décrit la cartographie entrée-état. Elle montre comment les entrées de contrôle affectent le changement de l'état du système.
- C (p x n) - Représente la cartographie état-sortie. Elle montre comment les variables d'état du système sont liées aux sorties du système.
- D (p x m) - Décrit le passage direct des entrées aux sorties. Dans de nombreux systèmes, cette matrice est nulle car il n'y a pas de passage direct.
- ni - Indice d'entrée : scalaire entier ou 1 (par défaut).

## Argument de sortie

- b - Coefficients du numérateur de la fonction de transfert : vecteur ou matrice.
- a - Coefficients du dénominateur de la fonction de transfert : vecteur.

## Description

<p>Convertit les matrices d'état A, B, C, D en numérateur et dénominateur d'une fonction de transfert.</p>

## Exemple

```matlab
Fs = 16;
dt = 1/Fs;
Ac = [0 1 0 0; -2 0 1 0; 0 0 0 1; 1 0 -2 0];
A = expm(Ac*dt);
Bc = [0 0; 1 0; 0 0; 0 1];
B = Ac\(A-eye(4))*Bc;
C = [-2 0 1 0; 1 0 -2 0];
D = eye(2);
[b, a] = ss2tf(A, B, C, D, 2)

```

## Voir aussi

[tf2ss](../control_system/tf2ss.md), [ss](../control_system/ss.md), [tf](../control_system/tf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
