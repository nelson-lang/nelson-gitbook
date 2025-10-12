# clear

Remove variable from workspace.

## Argument d'entrée

- variable_name - a string: variable name.
- global - clears all global variables.
- all - clears all variables in all scopes
- mex - clears all mex functions in all scopes
- variables - clears all variables in current scope.
- functions - clears cache of macros functions and associated persistent variables.
- function_name - clears persistent variables of a function.
- mexfunction_name - clears mex function (see mexAtExit).

## Description

<p>Supprime des variables de l'espace de travail courant ou d'une portée spécifiée. Sans argument, supprime toutes les variables de l'espace de travail courant.</p>

<p>À utiliser avec prudence : cette opération ne peut pas être annulée.</p>

## Exemple

```matlab
A = 3;
who
clear A
who
A
```

## Voir aussi

[who](../memory_manager/who.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
