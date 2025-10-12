# nargout

Nombre d'arguments de sortie d'une fonction.

## Syntaxe

- R = nargout()
- R = nargout(function_name)
- R = nargout(function_handle)

## Argument d'entrée

- function_name - une chaîne : nom de la fonction
- function_handle - un handle de fonction

## Argument de sortie

- R - une valeur entière : nombre d'arguments de sortie

## Description

<p>Retourne le nombre d'arguments de sortie demandés par l'appelant d'une fonction.</p>

## Exemples

With an macro function:

```matlab
nargout('cellstr')
```

With an builtin function:

```matlab
nargout('cos')
```

## Voir aussi

[nargin](../core/nargin.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
