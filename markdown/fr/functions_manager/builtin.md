# builtin

Exécute une fonction intégrée.

## Syntaxe

- builtin(function_name; x1, ..., xn)
- builtin(function_handle; x1, ..., xn)
- [r1, ..., rn] = builtin(function_name, x1, ..., xn)
- [r1, ..., rn] = builtin(function_handle, x1, ..., xn)

## Argument d'entrée

- function_name - une chaîne : nom de fonction.
- function_handle - un handle de fonction.
- x1, ..., xn - arguments d'entrée de la fonction intégrée.

## Argument de sortie

- r1, ..., rn - arguments de sortie retournés par la fonction intégrée

## Description

<p>
            builtin appelle la fonction intégrée de base décrite par son nom ou handle de fonction et arguments d'entrée.</p>

## Exemple

```matlab
a = builtin('cos', 0)
b = builtin(str2func('cos'), 0)
```

## Voir aussi

[feval](../functions_manager/feval.md), [func2str](../function_handle/func2str.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
