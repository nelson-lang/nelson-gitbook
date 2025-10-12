# gettext

Obtient le texte traduit pour la locale courante.

## Syntaxe

- translated_string = gettext(your_string)
- translated*string = *(your_string))

## Argument d'entrée

- your_string - une chaîne : message à traduire.

## Argument de sortie

- translated_string - une chaîne : message traduit.

## Description

<p>translated_string = gettext(your_string) obtient la traduction d'une chaîne your_string pour la locale courante dans le domaine Nelson.</p>

<p>_(your_string) est un alias de gettext(your_string).</p>

## Exemple

```matlab
disp(_('function not found.'))
```

## Voir aussi

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
