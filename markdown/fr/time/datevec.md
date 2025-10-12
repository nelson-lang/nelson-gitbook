# datevec

Convertit un numéro de date série en vecteur date.

## Syntaxe

- [Y, M, D, H, MN, S] = datevec(dv)
- V = datevec(dv)

## Argument d'entrée

- dv - un scalaire, vecteur ou tableau multidimensionnel : numéro de date série.

## Argument de sortie

- Y, M, D, H, MN, S - double : Année, Mois, Jour, Heures, Minutes, Secondes.
- V - vecteur de double : [Année, Mois, Jour, Heures, Minutes, Secondes].

## Description

<p>
            datevec convertit un numéro de date série en vecteur date.</p>

<p>Pour mesurer les performances, il est préférable d'utiliser les fonctions tic et toc.</p>

## Exemple

```matlab
datevec(now())
datevec(720840)
V = datevec([720840, now()])
[Y, M, D, H, MN, S] = datevec([720840, now()])

```

## Voir aussi

[tic](../time/tic.md), [toc](../time/toc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
