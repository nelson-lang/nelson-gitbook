# class

Retourne le nom de classe d'un objet ou crée un objet nommé.

## Syntaxe

- name = class(var)
- obj = class(st, strname)

## Argument d'entrée

- var - une variable
- st - une structure
- strname - une chaîne : nom de la classe souhaité

## Argument de sortie

- name - une chaîne
- obj - un objet de type 'strname' basé sur la structure 'st'

## Description

<p>name = class(var) renvoie la classe de la variable var.</p>

<p>Les classes standard sont :</p>

<p>'cell'</p>

<p>'struct'</p>

<p>'single'</p>

<p>'double'</p>

<p>'logical'</p>

<p>'char'</p>

<p>'int8'</p>

<p>'int16'</p>

<p>'int32'</p>

<p>'int64'</p>

<p>'uint8'</p>

<p>'uint16'</p>

<p>'uint32'</p>

<p>'uint64'</p>

<p>'function_handle'</p>

## Exemples

```matlab
A = 3;
res = class(A)
```

```matlab
C = [1 ; 3];
res = class(C)
```

```matlab
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
class(c)
```

## Voir aussi

[isa](../types/isa.md), [isdouble](../integer/isdouble.md), [isfloat](../types/isfloat.md), [ischar](../types/ischar.md), [isstruct](../types/isstruct.md), [iscell](../types/iscell.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
