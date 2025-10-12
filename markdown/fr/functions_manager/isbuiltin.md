# isbuiltin

Vérifie l'existence d'une fonction intégrée.

## Syntaxe

- tf = isbuiltin(name)

## Argument d'entrée

- name - une chaîne : nom de fonction intégrée.

## Argument de sortie

- tf - un booléen : vrai si la fonction intégrée existe.

## Description

<p>
            isbuiltin vérifie l'existence d'une fonction intégrée.</p>

## Exemple

```matlab
isbuiltin('isbuiltin')
isbuiltin('exist')
ismacro('exist')
```

## Voir aussi

[ismacro](../functions_manager/ismacro.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
