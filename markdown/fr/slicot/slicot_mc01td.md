# slicot_mc01td

Vérification de la stabilité d'un polynôme réel donné.

## Syntaxe

- [DP_OUT, STABLE, NZ, IWARN, INFO] = slicot_mc01td(DICO, DP_IN, P)

## Argument d'entrée

- DICO - Indique si le test de stabilité à appliquer à P(x) est en temps continu ou discret : = 'C' : continu ; = 'D' : discret.
- DP_IN - Le degré du polynôme P(x).
- P - Ce tableau doit contenir les coefficients de P(x) par puissances croissantes de x.

## Argument de sortie

- DP_OUT - Si P(DP+1) = 0.0 à l'entrée, alors DP contient l'indice de la plus haute puissance de x pour laquelle P(DP+1) != 0.0.
- STABLE - Contient la valeur int32(1) si P(x) est stable et int32(0) sinon.
- NZ - Si INFO = 0, contient le nombre de zéros instables - c.-à-d. le nombre de zéros de P(x) dans le demi-plan droit si DICO = 'C' ou le nombre de zéros de P(x) à l'extérieur du cercle unité si DICO = 'D'.
- IWARN - = 0 : pas d'avertissement ;
- INFO - = 0 : sortie réussie ; = 1 : si à l'entrée, P(x) est le polynôme nul ; = 2 : si le polynôme P(x) est très probablement instable.

## Description

<p>Déterminer si un polynôme P(x) à coefficients réels est stable, soit en temps continu, soit en temps discret.</p>

<p>Un polynôme est dit stable en continu si tous ses zéros se trouvent dans le demi-plan gauche, et stable en discret si tous ses zéros se trouvent à l'intérieur du cercle unité.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/MC01TD.html

## Fonction(s) utilisée(s)

MC01TD

## Exemple

```matlab
DICO = 'C';
DP_IN = 4;
P = [2.0  0.0  1.0  -1.0  1.0];
[DP, STABLE, NZ, IWARN, INFO] = slicot_mc01td(DICO, DP_IN, P)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
