# slicot_mb05od

Exponentielle matricielle pour une matrice réelle, avec estimation de précision.

## Syntaxe

- [A_OUT, MDIG, IDIG, IWARN, INFO] = slicot_mb05od(BALANC, NDIAG, DELTA, A_IN)

## Argument d'entrée

- BALANC - Spécifie si une transformation d'équilibrage (réalisée par MB04MD) est requise : = 'N' : ne pas utiliser d'équilibrage ; = 'S' : utiliser l'équilibrage (mise à l'échelle).
- NDIAG - L'ordre spécifié de l'approximation de Pade diagonale. À défaut d'information, NDIAG = 9. NDIAG ne doit pas dépasser 15. NDIAG ≥ 1.
- DELTA - La valeur scalaire delta du problème.
- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice A du problème.

## Argument de sortie

- A_OUT - Si INFO = 0, la partie principale N-by-N de ce tableau contient la matrice solution exp(A \* delta).
- MDIG - Le nombre minimal de chiffres exacts dans la norme 1 de exp(A\*delta).
- IDIG - Le nombre de chiffres exacts dans la norme 1 de exp(A\*delta) au niveau de confiance 95%.
- IWARN - = 0 : pas d'avertissement ; = 1 : si MDIG = 0 et IDIG > 0, avertissement d'inexactitude possible (l'exponentielle a été calculée) ; = 2 : si MDIG = 0 et IDIG = 0, avertissement d'inexactitude sévère (l'exponentielle a été calculée) ; = 3 : si l'équilibrage a été demandé mais a échoué à réduire la norme et n'a pas été utilisé.
- INFO - = 0 : sortie réussie ; = 1 : si la norme de A\*delta (après équilibrage éventuel) est trop grande pour obtenir un résultat précis ; = 2 : si la matrice de coefficients (dénominateur de l'approximation de Pade) est exactement singulière ; essayer une autre valeur de NDIAG ; = 3 : si l'exponentielle solution débordera, possiblement dû à une valeur DELTA trop grande ; les calculs ont été interrompus prématurément.

## Description

<p>Calculer exp(A*delta) où A est une matrice réelle N-by-N et delta un scalaire. La routine renvoie aussi le nombre minimal de chiffres exacts dans la norme 1 de exp(A*delta) et le nombre de chiffres exacts au niveau de confiance 95%.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/MB05OD.html

## Fonction(s) utilisée(s)

MB05OD

## Exemple

```matlab
N = 3;
NDIAG = 9;
DELTA = 1.0;
BALANC = 'S';
A_IN = [2.0   1.0   1.0;
   0.0   3.0   2.0;
   1.0   0.0   4.0];
[A_OUT, MDIG, IDIG, IWARN, INFO] = slicot_mb05od(BALANC, NDIAG, DELTA, A_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
