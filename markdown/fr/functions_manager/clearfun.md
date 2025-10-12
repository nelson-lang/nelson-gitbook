# clearfun

Efface une fonction intégrée.

## Syntaxe

- l = clearfun(function_name)
- l = clearfun(function_handle)

## Argument d'entrée

- function_name - une chaîne : nom de fonction.
- function_handle - un handle de fonction.

## Argument de sortie

- l - un booléen

## Description

<p>
            clearfun efface une fonction intégrée.</p>

## Exemple

```matlab
cos(3)
a = clearfun('cos')
cos(3)

sin(3)
b = clearfun(str2func('sin'))
sin(3)

```

## Voir aussi

[feval](../functions_manager/feval.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
