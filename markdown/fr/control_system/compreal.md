# compreal

Réalisation compagnon des fonctions de transfert.

## Syntaxe

- [A, B, C, D, E] = compreal(numerator, denominator)

## Argument d'entrée

- numerator - un vecteur ou une matrice
- denominator - un vecteur

## Argument de sortie

- A (n x n) - Représente la matrice de transition d'état du système. Elle décrit comment l'état interne du système évolue au fil du temps.
- B (n x m) - Décrit la correspondance entrée-état. Elle montre comment les entrées de contrôle affectent le changement dans l'état du système.
- C (p x n) - Représente la correspondance état-sortie. Elle montre comment les variables d'état du système sont liées aux sorties du système.
- D (p x m) - Décrit le passage direct des entrées aux sorties. Dans de nombreux systèmes, cette matrice est nulle car il n'y a pas de passage direct.
- E (n x n) - matrice.

## Description

<p>
            [A, B, C, D, E] = compreal(numerator, denominator) calcule une réalisation d'espace d'état représentée par les matrices A, B, C, D et E.</p>

<p>The E matrix is an empty matrix (identity matrix) when there are at least as many poles as zeros.</p>

<p>However, if there are more zeros than poles, the E matrix becomes singular.</p>

## Exemple

```matlab
numerator = [0 10 10];
denominator = [1 1 10];
[A, B, C, D, E] = compreal(numerator, denominator)
```

## Voir aussi

[tf](../control_system/tf.md), [ss](../control_system/ss.md), [balance](../linear_algebra/balance.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
