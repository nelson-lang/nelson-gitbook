# properties

Renvoie les noms des proprietes publiques d'un objet ou d'une classe.

## 📝 Syntaxe

- properties(h)
- c = properties(h)
- c = properties(obj)
- c = properties(className)

## 📥 Argument d'entrée

- h - un objet handle
- obj - un objet classdef
- className - un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

## 📤 Argument de sortie

- c - un tableau (cell) de chaines

## 📄 Description

<b>properties</b> renvoie un tableau de chaines contenant les noms des proprietes publiques.

Pour les classes classdef, les proprietes privees, protegees et limitees par liste d'acces ne sont pas listees. Les proprietes constantes peuvent etre lues avec <b>ClassName.PropertyName</b>.

Pour les tableaux d'objets classdef, <b>properties</b> renvoie les proprietes publiques de la classe des elements.

Les proprietes dependantes et les evenements automatiques de proprietes observables sont analyses comme attributs, mais le dispatch des methodes get/set et les notifications automatiques restent limites.

## 💡 Exemple

Lister les proprietes publiques d'un tableau d'objets classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_properties/'];
mkdir(d);
filewrite([d, '/NelsonHelpPropertiesPoint.m'], ["classdef NelsonHelpPropertiesPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpPropertiesPoint();
b = NelsonHelpPropertiesPoint();
p = properties([a, b])
```

## 🔗 Voir aussi

[isprop](../handle/isprop.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description                                |
| ------- | --------------------------------------------- |
| 1.0.0   | version initiale                              |
| 2.0.0   | support des noms de classe classdef ajoute    |
| 2.0.0   | support des tableaux d'objets classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
