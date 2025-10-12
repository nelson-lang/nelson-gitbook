# lastwarn

Renvoie le dernier message d'avertissement enregistré.

## Syntaxe

- last_message = lastwarn()
- [last_message, last_identifier] = lastwarn()
- lastwarn('')
- lastwarn(new_message)
- lastwarn(new_message, new_identifier)
- [last_message, last_identifier] = lastwarn('')
- [last_message, last_identifier] = lastwarn(new_message)
- [last_message, last_identifier] = lastwarn(new_message, new_identifier)

## Argument de sortie

- last_message - chaîne : dernier message d'avertissement.
- last_identifier - chaîne : identifiant.

## Description

<p>last_message = lastwarn() renvoie une chaîne contenant le dernier message d'avertissement.</p>

<p>lastwarn('') efface le dernier avertissement.</p>

## Exemple

```matlab

    [1:3]:3
    lastwarn
    [msg, id] = lastwarn()
    lastwarn('')
    [msg, id] = lastwarn()

```

## Voir aussi

[error](../error_manager/error.md), [warning](../error_manager/warning.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
