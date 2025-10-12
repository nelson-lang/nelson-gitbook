# cellfun

Évalue une fonction sur un tableau cellulaire.

## Syntaxe

- R = cellfun(function_name, ce)
- R = cellfun(function_handle, ce)
- [R1, ... , Rp] = cellfun(function_handle, ce1, ..., cep)
- [R1, ... , Rp] = cellfun(function_handle, ce1, ..., cep, name, value)

## Argument d'entrée

- function_handle - un handle de fonction.
- ce1, ... , cep - tableaux cellulaires correspondant aux p entrées requises par function_handle.
- name, value pair - 'UniformOutput' : true ou false, 'ErrorHandler' : une fonction d'erreur.

## Argument de sortie

- R1, ... , Rp - Sorties de la fonction

## Description

<p>
            cellfun applique une fonction à chaque élément d'un tableau cellulaire.</p>

## Exemples

```matlab
greetings = {'Hello', 'Guten Tag', 'Sawadee', 'Bonjour', 'Namaste', ''};
R = cellfun('size', greetings, 1)
R1 = cellfun('size', greetings, 2)
```

```matlab
C = {1:10, eye(3,4), eye(5,6)};
f = str2func('size');
[nrows_1, ncols_1] = cellfun(f, C,'UniformOutput', false)
[nrows_2, ncols_2] = cellfun(f, C,'UniformOutput', true)
```

functions to define for next example:

```matlab
function r = fun1(x, y)
r = x > y;
end

function result = errorfun(S, varargin)
	disp(nargin())
	disp(S)
	disp(class(varargin))
	disp(size(varargin))
	disp(varargin{1})
	disp(varargin{2})
	result = false;
end
```

```matlab
R = str2func('fun1');
H =  str2func('errorfun');
A = {rand(3)};
B = {rand(5)};
AgtA = cellfun(R, A, B, 'ErrorHandler', H, 'UniformOutput', true)
AgtB = cellfun(R, A, B, 'ErrorHandler', H, 'UniformOutput', false)
```

## Voir aussi

[cell](../data_structures/cell.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
