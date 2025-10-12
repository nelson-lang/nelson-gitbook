# second

Composante secondes de la date et de l'heure d'entrée.

## Syntaxe

- s = second(t)
- s = second(t, formatIn)

## Argument d'entrée

- t - numéro de date série ou chaînes de texte en entrée.
- formatIn - format de date valide

## Argument de sortie

- s - un double : valeur entière.

## Description

<p>
            s = second(t) extracts the second component from each date and time specified in t.</p>

<p>The output s is a double array containing integer values ranging from 0 to 59.</p>

## Exemple

```matlab
s = second(738427.656845093)
s = second("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

```

## Voir aussi

[minute](../time/minute.md), [hour](../time/hour.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
