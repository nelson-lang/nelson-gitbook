# fieldnames

Renvoie les noms des champs d'une structure ou les proprietes publiques classdef.

## 📝 Syntaxe

- names = fieldnames(st)
- names = fieldnames(obj)
- names = fieldnames(objArray)

## 📥 Argument d'entrée

- st - une structure
- obj - un objet classdef ou un objet handle
- objArray - un tableau d'objets classdef ou de handles

## 📤 Argument de sortie

- names - un tableau (cell) de chaines

## 📄 Description

<b>fieldnames(st)</b> renvoie un tableau de chaines contenant les noms des champs de la structure d'entree.

Pour les objets classdef, <b>fieldnames(obj)</b> renvoie les memes noms de proprietes publiques que <b>properties(obj)</b>.

Pour les tableaux d'objets classdef, les noms renvoyes sont les proprietes publiques de la classe des elements.

## 💡 Exemple

Lister les noms des proprietes publiques d'un tableau d'objets classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_fieldnames/'];
mkdir(d);
filewrite([d, '/NelsonHelpFieldPoint.m'], ["classdef NelsonHelpFieldPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpFieldPoint();
b = NelsonHelpFieldPoint();
names = fieldnames([a, b])
```

## 🔗 Voir aussi

[getfield](../data_structures/getfield.md), [properties](../handle/properties.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description                     |
| ------- | ---------------------------------- |
| 1.0.0   | version initiale                   |
| 2.0.0   | support des objets classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
