# poheader

Génère l'en-tête d'un fichier PO.

## Syntaxe

- ce = poheader(domain, language)

## Argument d'entrée

- domain - une chaîne : domaine du message.
- language - une chaîne : langue, ex. 'fr_FR' ou 'fr_FR'.

## Argument de sortie

- ce - un tableau (cell) de chaînes : en-tête du fichier PO.

## Description

<p>
            ce = poheader(domain, language) generates po file header.</p>

## Exemple

```matlab
poheader('nelson', 'fr_FR')
```

## Voir aussi

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
