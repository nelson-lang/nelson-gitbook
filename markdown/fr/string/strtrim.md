# strtrim

Supprime les espaces en début et fin de chaîne.

## Syntaxe

- res = strtrim(str)

## Argument d'entrée

- str - une chaîne, une cellule de chaînes ou un tableau de chaînes.

## Argument de sortie

- res - une chaîne sans espaces en début ou en fin.

## Description

<p>
            strtrim supprime les espaces en début et en fin de chaîne.</p>

<p>
                strtrim ne supprime pas tous les espaces significatifs (seuls les caractères ' \t\n\r\f\v' sont supprimés).</p>

## Exemples

```matlab
strtrim(' Nel Son')
```

```matlab
strtrim(" Nel Son")
```

```matlab
strtrim([' Nel Son', char(160)])
```

## Voir aussi

[deblank](../string/deblank.md), [toupper](../string/toupper.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
