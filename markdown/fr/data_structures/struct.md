# struct

Cree une structure ou convertit un objet en structure.

## 📝 Syntaxe

- st = struct()
- st = struct([])
- st = struct(object)
- st = struct(field, value)
- st = struct(field, value, field2, value2, ..., fieldn, valuen)

## 📥 Argument d'entrée

- field, field2, ... , fieldn - chaines : noms de champs. Les noms valides suivent les regles des identifiants de variables.
- value, value2, ..., valuen - valeurs de tout type Nelson
- object - un objet ancien style ou un objet classdef

## 📤 Argument de sortie

- st - une structure

## 📄 Description


<b>struct</b> cree une structure a partir de paires champ/valeur. 

<b>struct(object)</b> convertit un objet en structure contenant ses champs publics ou ses proprietes publiques classdef. 

Pour les objets handle classdef, <b>struct</b> lit les valeurs courantes des proprietes publiques depuis le handle.

## 💡 Exemples

Creer une structure avec des paires champ/valeur.

```matlab
date_st = struct('day', 15, 'month', 'August', 'year', 1974)
```
Convertir un objet classdef en structure.

```matlab
clear classes
d = [tempdir(), 'nelson_help_struct/'];
mkdir(d);
filewrite([d, '/NelsonHelpStructPoint.m'], ["classdef NelsonHelpStructPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpStructPoint();
obj.X = 3;
obj.Y = 4;
st = struct(obj)
```


## 🔗 Voir aussi

[cell](../data_structures/cell.md), [fieldnames](../data_structures/fieldnames.md), [isstruct](../types/isstruct.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.3.0   | nom de champ accepte sous forme de chaine scalaire. |
| 2.0.0   | conversion des objets classdef documentee |

<!--
## 👤 Auteur

Allan CORNET
-->
