# methods

Renvoie les noms des methodes publiques d'un objet ou d'une classe.

## 📝 Syntaxe

- c = methods(h)
- c = methods(obj)
- c = methods(className)

## 📥 Argument d'entrée

- h - un objet handle
- obj - un objet classdef
- className - un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

## 📤 Argument de sortie

- c - un tableau (cell) de chaines

## 📄 Description


<b>methods</b> renvoie un tableau de chaines contenant les noms des methodes publiques. 

Pour les classes classdef, les methodes privees ou protegees ne sont pas listees. Les methodes statiques sont listees et peuvent etre appelees avec <b>ClassName.method</b>. 

Pour les tableaux d'objets classdef, <b>methods</b> renvoie les methodes publiques de la classe des elements.

## 💡 Exemple

Lister les methodes publiques d'un tableau d'objets classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_methods/'];
mkdir(d);
filewrite([d, '/NelsonHelpMethodsPoint.m'], ["classdef NelsonHelpMethodsPoint"; "  properties"; "    X = 0"; "  end"; "  methods"; "    function r = value(obj)"; "      r = obj.X;"; "    end"; "  end"; "end"]);
addpath(d);
a = NelsonHelpMethodsPoint();
b = NelsonHelpMethodsPoint();
m = methods([a, b])
```


## 🔗 Voir aussi

[isprop](../handle/isprop.md), [ismethod](../handle/ismethod.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | support des noms de classe classdef ajoute |
| 2.0.0   | support des tableaux d'objets classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
