# macroargs

Retourne les noms des variables d'une fonction.

## Syntaxe

- [argOut, argIn] = macroarg(function_name)

## Argument d'entrée

- function_name - une chaîne : nom de fonction.

## Argument de sortie

- argOut - une cellule avec les arguments de sortie.
- argIn - une cellule avec les arguments d'entrée.

## Description

<p>
            macroargs retourne les variables d'entrée et de sortie utilisées par la fonction.</p>

## Exemple

```matlab
[out_args, in_args] = macroarg('getfield')
[out_args, in_args] = macroarg('deal')
```

## Voir aussi

[which](../functions_manager/which.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
