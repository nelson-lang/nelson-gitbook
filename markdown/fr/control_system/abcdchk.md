# abcdchk

Vérifie la compatibilité dimensionnelle des matrices A, B, C et D.

## Syntaxe

- [msg, A, B, C, D] = abcdchk(a, b, c, d)

## Argument d'entrée

- a (n x n) - Représente la matrice de transition d'état du système. Elle décrit comment l'état interne du système évolue au fil du temps.
- b (n x m) - Décrit la correspondance entrée-état. Elle montre comment les entrées de contrôle affectent le changement dans l'état du système.
- c (p x n) - Représente la correspondance état-sortie. Elle montre comment les variables d'état du système sont liées aux sorties du système.
- d (p x m) - Décrit le passage direct des entrées aux sorties. Dans de nombreux systèmes, cette matrice est nulle car il n'y a pas de passage direct.

## Argument de sortie

- msg - Retourne une structure vide si les dimensions des matrices sont cohérentes. Sinon, elle retourne le message d'erreur associé.
- a (n x n) - Représente la matrice de transition d'état du système. Elle décrit comment l'état interne du système évolue au fil du temps.
- b (n x m) - Décrit la correspondance entrée-état. Elle montre comment les entrées de contrôle affectent le changement dans l'état du système.
- c (p x n) - Représente la correspondance état-sortie. Elle montre comment les variables d'état du système sont liées aux sorties du système.
- d (p x m) - Décrit le passage direct des entrées aux sorties. Dans de nombreux systèmes, cette matrice est nulle car il n'y a pas de passage direct.

## Description

<p>
            abcdchk vérifie la cohérence dimensionnelle des matrices A, B, C, D, E.</p>

<p>Elle ajuste également les dimensions de toute matrice vide 0-par-0 pour assurer leur alignement avec le reste.</p>

## Exemple

```matlab
A = [0 1; -2 -3];
B = [0;  1];
C = [1 0];
D = 0;
[msg, AA, BB, CC, DD] = abcdchk(A, B, C, D)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
