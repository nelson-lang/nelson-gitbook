# isfunction_handle

Vérifie si une valeur est un function handle.

## Syntaxe

- l = isfunction_handle(func_handle)

## Argument d'entrée

- func_handle - a function handle ou une autre variable.

## Argument de sortie

- l - un booléen

## Description

<p>l = isfunction_handle(func_handle) vérifie si func_handle est un function handle et renvoie true si c'est le cas.</p>

## Exemple

```matlab
fh = str2func('cos')
isfunction_handle(fh)
fh = 3
isfunction_handle(fh)
```

## Voir aussi

[str2func](../function_handle/str2func.md), [func2str](../function_handle/func2str.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
