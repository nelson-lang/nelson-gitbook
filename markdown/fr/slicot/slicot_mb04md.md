# slicot_mb04md

Équilibrage d'une matrice réelle générale.

## Syntaxe

- [MAXRED_OUT, A_OUT, SCALE, INFO] = slicot_mb04md(MAXRED_IN, A_IN)

## Argument d'entrée

- MAXRED_IN - La réduction maximale autorisée de la norme 1 de A (par itération) si des lignes ou colonnes nulles sont rencontrées. Si MAXRED > 0.0, MAXRED doit être > 1 (pour permettre la réduction de norme). Si MAXRED ≤ 0.0, la valeur 10.0 est utilisée.
- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice d'entrée A.

## Argument de sortie

- MAXRED_OUT - Si la norme 1 de la matrice A donnée est non nulle, le rapport entre la norme 1 de la matrice donnée et la norme 1 de la matrice équilibrée. Habituellement, ce ratio est > 1, mais il peut être égal à 1 ou parfois inférieur à 1 (p.ex. pour certaines matrices compagnon).
- A_OUT - La partie principale N-by-N de ce tableau contient la matrice équilibrée.
- SCALE - Les facteurs d'échelle appliqués à A. Si D(j) est le facteur appliqué à la ligne et colonne j, alors SCALE(j) = D(j), pour j = 1,...,N.
- INFO - = 0 : sortie réussie.

## Description

<p>Réduire la norme 1 d'une matrice réelle générale A par équilibrage. Cela implique des transformations de similarité diagonales appliquées itérativement à A pour rendre les lignes et colonnes aussi proches que possible en norme.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/MB04MD.html

## Fonction(s) utilisée(s)

MB04MD

## Exemple

```matlab
MAXRED_IN  = 0.0;
A_IN = [1.0   0.0   0.0   0.0;
 300.0 400.0 500.0 600.0;
   1.0   2.0   0.0   0.0;
   1.0   1.0   1.0   1.0];
[MAXRED_OUT, A_OUT, SCALE, INFO] = slicot_mb04md(MAXRED_IN, A_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
