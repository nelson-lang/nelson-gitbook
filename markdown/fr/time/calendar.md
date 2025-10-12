# calendar

Calendar.

## Syntaxe

- calendar()
- c = calendar()
- c = calendar(d)
- c = calendar(y, m)

## Argument d'entrée

- d - un entier : numéro de date série.
- y - un entier : année souhaitée [1400, 9999].
- m - un entier : mois souhaité [1, 12].

## Argument de sortie

- c - une matrice 6x7.

## Description

<p>
            calendar() returns the currently monthly calendar.</p>

<p>If no output arguments are specified,the calendar is displayed on the screen instead of returning a matrix 6x7.</p>

## Exemple

```matlab
calendar()
c = calendar(1973, 8)
c = calendar(datenum(1973, 8, 4))
```

## Voir aussi

[datenum](../time/datenum.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
