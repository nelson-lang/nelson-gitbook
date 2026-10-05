# superclasses

Noms des superclasses d'une classe.

## 📝 Syntaxe

- s = superclasses(className)
- s = superclasses(obj)

## 📥 Argument d'entrée

- className - un nom de classe (chaîne ou vecteur de caractères).
- obj - un objet classdef ou handle.

## 📤 Argument de sortie

- s - un tableau de cellules N-par-1 de caractères contenant les noms de toutes les superclasses visibles, ancêtre le plus proche en premier.

## 📄 Description


<b>superclasses</b> renvoie les noms de toutes les superclasses visibles d'une classe, spécifiée par son nom ou par un objet de cette classe. Les ancêtres sont renvoyés du plus proche au plus lointain, chaque nom apparaissant une seule fois.

## 💡 Exemple

Noms des superclasses d'une classe.

```matlab
d = [tempdir(), 'nelson_help_superclasses/'];
mkdir(d);
filewrite([d, '/NelsonHelpBase.m'], ["classdef NelsonHelpBase"; "end"]);
filewrite([d, '/NelsonHelpDeriv.m'], ["classdef NelsonHelpDeriv < NelsonHelpBase"; "end"]);
addpath(d);
superclasses('NelsonHelpDeriv')
```


## 🔗 Voir aussi

[metaclass](../handle/metaclass.md), [properties](../handle/properties.md), [methods](../handle/methods.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
