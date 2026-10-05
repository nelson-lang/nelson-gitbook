# isprop

Renvoie true si une propriete appartient a un objet ou une classe.

## 📝 Syntaxe

- res = isprop(h, propertyname)
- res = isprop(obj, propertyname)
- res = isprop(objArray, propertyname)
- res = isprop(className, propertyname)

## 📥 Argument d'entrée

- h - un objet handle
- obj - un objet classdef
- className - un nom de classe sous forme de chaine
- propertyname - une chaine

## 📤 Argument de sortie

- res - un scalaire logique, ou un tableau logique de meme taille que le tableau d'objets

## 📄 Description


<b>isprop</b> renvoie un logique 1 si la propriete est definie pour l'objet ou la classe, et 0 sinon. 

Pour les tableaux d'objets classdef, le resultat a la meme taille que le tableau d'objets. 

Pour les classes classdef, <b>isprop</b> peut indiquer que des proprietes privees ou protegees existent. Utilisez <b>properties</b> pour lister les proprietes publiques.

## 💡 Exemple

Tester les proprietes sur un tableau de handles classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_isprop/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsPropCounter.m'], ["classdef NelsonHelpIsPropCounter < handle"; "  properties"; "    Count = 0"; "  end"; "  properties (Access = private)"; "    Secret = 1"; "  end"; "end"]);
addpath(d);
a = NelsonHelpIsPropCounter();
b = NelsonHelpIsPropCounter();
tf = isprop([a, b], 'Count')
tfPrivate = isprop([a, b], 'Secret')
publicNames = properties([a, b])
delete([a, b])
```


## 🔗 Voir aussi

[ismethod](../handle/ismethod.md), [properties](../handle/properties.md), [classdef](../interpreter/classdef.md).

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
