# slicot_sb10jd

Conversion d'un système d'espace d'état descripteur en forme d'espace d'état régulière.

## Syntaxe

- [A_OUT, B_OUT, C_OUT, D_OUT, E_OUT, NSYS, INFO] = slicot_sb10jd(A_IN, B_IN, C_IN, D_IN, E_IN)

## Argument d'entrée

- A_IN - La partie principale N×N de ce tableau doit contenir la matrice d'état A du système descripteur.
- B_IN - La partie principale N×M de ce tableau doit contenir la matrice d'entrée B du système descripteur.
- C_IN - La partie principale NP×N de ce tableau doit contenir la matrice de sortie C du système descripteur.
- D_IN - La partie principale NP×M de ce tableau doit contenir la matrice D du système descripteur.
- E_IN - La partie principale N×N de ce tableau doit contenir la matrice E du système descripteur.

## Argument de sortie

- A_OUT - La partie principale NSYS×NSYS de ce tableau contient la matrice d'état Ad du système converti.
- B_OUT - La partie principale NSYS×M de ce tableau contient la matrice d'entrée Bd du système converti.
- C_OUT - La partie principale NP×NSYS de ce tableau contient la matrice de sortie Cd du système converti.
- D_OUT - La partie principale NP×M de ce tableau contient la matrice Dd du système converti.
- E_OUT - Ce tableau ne contient aucune information utile.
- NSYS - L'ordre du système d'espace d'état converti.
- INFO - 0 : sortie réussie ; 1 : l'itération pour calculer la décomposition en valeurs singulières n'a pas convergé.

## Description

<p>convertir le système d'espace d'état descripteur en forme d'espace d'état régulier.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/SB10JD.html

## Fonction(s) utilisée(s)

SB10JD

## Exemple

```matlab
A_IN = [2 -4; 4 2];
B_IN = [0 -1; 0 0.5];
C_IN = [0 -0.5; 0 -2];
D_IN = [0 0; 0 -1];
E_IN = [1 0; -3 0.5];
[A_OUT, B_OUT, C_OUT, D_OUT, E_OUT, NSYS, INFO] = slicot_sb10jd(A_IN, B_IN, C_IN, D_IN, E_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
