# isobject

Renvoie true si une variable est un objet.

## 📝 Syntaxe

- res = isobject(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : true ou false

## 📄 Description


<b>isobject</b> renvoie un logique 1 si <b>var</b> est un objet Nelson, et 0 sinon. 

Les objets valeur classdef et les objets handle classdef sont indiques comme objets.

## 💡 Exemple

Tester des objets classdef valeur et handle.

```matlab
clear classes
d = [tempdir(), 'nelson_help_isobject/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsObjectPoint.m'], ["classdef NelsonHelpIsObjectPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
filewrite([d, '/NelsonHelpIsObjectCounter.m'], ["classdef NelsonHelpIsObjectCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
p = NelsonHelpIsObjectPoint();
h = NelsonHelpIsObjectCounter();
isPointObject = isobject(p)
isHandleObject = isobject(h)
delete(h)
```


## 🔗 Voir aussi

[isa](../types/isa.md), [ishandle](../types/ishandle.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | support des objets classdef valeur et handle documente |

<!--
## 👤 Auteur

Allan CORNET
-->
