# str2func

Renvoie un function handle à partir d'une chaîne.

## Syntaxe

- func_handle = str2func(str)

## Argument d'entrée

- str - a string

## Argument de sortie

- func_handle - un function handle.

## Description

<p>
            function_handle = str2func(str) renvoie un function handle function_handle pour la fonction nommée dans la chaîne str
        </p>

<p>
            str nom de fonction ou représentation d'une fonction anonyme.</p>

## Exemples

```matlab
fh = str2func('cos')
str = func2str(fh)
```

```matlab
myFind = str2func('@(x, y) find(x > y)')
M = rand(4, 3, 5);
[R, C] = myFind(M, 0.9)
```

## Voir aussi

[func2str](../function_handle/func2str.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
