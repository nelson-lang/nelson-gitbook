# leapyear

Déterminer les années bissextiles.

## Syntaxe

- tf = leapyear(year)

## Argument d'entrée

- year - année : scalaire ou tableau de valeurs numériques.

## Argument de sortie

- tf - résultat de la détermination bissextile : scalaire ou tableau de valeurs logiques.

## Description

<p>
            leapyear determines leap years.</p>

<p>Leap years is done by Gregorian calendar rules.</p>

## Exemple

```matlab
tf = leapyear([2020 2021 2022])
```

## Voir aussi

[datenum](../time/datenum.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
