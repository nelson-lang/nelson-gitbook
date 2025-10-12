# hour

Composante heures de la date et de l'heure d'entrée.

## Syntaxe

- h = hour(t)
- h = hour(t, formatIn)

## Argument d'entrée

- t - numéro de date série ou chaînes de texte en entrée.
- formatIn - format de date valide

## Argument de sortie

- h - un double : valeur entière.

## Description

<p>
        h = hour(t) extrait la composante heures de chaque date et heure spécifiées dans t.</p>

<p>La sortie h est un tableau de double contenant des valeurs entières comprises entre 0 et 23.</p>

## Exemple

```matlab
h = hour(738427.656845093)
h = hour("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

```

## Voir aussi

[minute](../time/minute.md), [second](../time/second.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
