# ord2

Génère des systèmes du second ordre continus.

## Syntaxe

- [A, B, C, D] = ord2(wn, z)
- [num, den] = ord2(wn, z)

## Argument d'entrée

- wn - pulsation naturelle
- z - facteur d'amortissement

## Argument de sortie

- A - Matrice d'état : matrice Nx par Nx.
- B - Matrice d'entrée vers l'état : matrice Nx par Nu.
- C - Matrice d'état vers sortie : matrice Ny par Nx.
- D - Matrice de passage : matrice Ny par Nu.
- num - coefficients polynomiaux : un vecteur ligne ou un tableau de cellules de vecteurs ligne.
- den - coefficients polynomiaux : un vecteur ligne ou un tableau de cellules de vecteurs ligne.

## Description

<p>Génère des matrices d'état (A, B, C, D) ou numérateur/dénominateur pour un système continu du second ordre à partir de la pulsation naturelle et de l'amortissement.</p>

## Exemple

```matlab
wn = 5;
z = 0.7;
[A, B, C, D] = ord2(wn, z);
sys1 = ss(A, B, C, D)

[num, den] = ord2(wn, z);
sys2 = tf(num, den)

```

## Voir aussi

[ss](../control_system/ss.md), [tf](../control_system/tf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
