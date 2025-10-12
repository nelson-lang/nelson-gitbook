# addtodate

Modifier un numéro de date par champ.

## Syntaxe

- r = addtodate(d, q, f)

## Argument d'entrée

- d - numéro de date série.
- q - quantité à ajouter au champ de date
- f - 'year', 'month', 'day', 'hour', 'minute', 'second' ou 'millisecond'.

## Argument de sortie

- r - numéro de date résultant.

## Description

<p>
                        r = addtodate(d, q, f) ajoute la quantité q au champ de date indiqué f d'un numéro de date série scalaire d, et renvoie le numéro de date mis à jour r.</p>

## Exemple

```matlab
t = datenum('07-Apr-2008 23:00:00');datevec(t)
t2 = addtodate(t, -2, 'hour');datevec(t2)
t3 = addtodate(t, 4, 'hour');datevec(t3)
```

## Voir aussi

[datenum](../time/datenum.md), [datevec](../time/datevec.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
