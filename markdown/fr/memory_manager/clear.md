# clear

Efface une variable de l'espace de travail.

## 📝 Syntaxe

- clear
- clear variable\_name
- clear('-regexp', expression\_1, ..., expression\_N)
- clear global
- clear all
- clear mex
- clear variables
- clear functions
- clear classes
- clear function\_name
- clear mexfunction\_name
- clear variable\_name\_1 ... variable\_name\_N
- clear global variable\_name\_1 ... variable\_name\_N

## 📥 Argument d'entrée

- variable\_name - un vecteur de caracteres ou un scalaire string : nom de variable.
- -regexp - efface les variables de l'espace de travail courant dont le nom correspond a l'une des expressions regulieres.
- global - clears all global variables.
- all - clears all variables in all scopes
- mex - clears all mex functions in all scopes
- variables - clears all variables in current scope.
- functions - clears cache of macros functions and associated persistent variables.
- classes - efface les variables classdef vivantes, les metadonnees classdef et le cache des methodes de classe generees.
- function\_name - clears persistent variables of a function.
- mexfunction\_name - clears mex function (see mexAtExit).

## 📄 Description


Supprime des variables de l'espace de travail courant ou d'une portée spécifiée. Sans argument, supprime toutes les variables de l'espace de travail courant. 

À utiliser avec prudence : cette opération ne peut pas être annulée. 

<b>clear('-regexp', ...)</b> efface les variables de l'espace de travail courant dont le nom correspond a l'une des expressions regulieres donnees. 

<b>clear classes</b> efface les variables classdef vivantes et recharge les definitions classdef depuis le disque lors de la prochaine utilisation.

## 💡 Exemples



```matlab
A = 3;
who
clear A
who
exist('A', 'var')
```
Effacer des variables avec une expression reguliere.

```matlab
MonValue = 1;
TueValue = 2;
KeepValue = 3;
clear('-regexp', '^Mon', '^Tue')
who
```
Recharger une definition classdef depuis le disque.

```matlab
clear classes
d = [tempdir(), 'nelson_help_clear_classdef_fr/'];
mkdir(d);
file = [d, '/NelsonHelpClearReloadFr.m'];
filewrite(file, ["classdef NelsonHelpClearReloadFr"; "  properties (Constant)"; "    Version = 1"; "  end"; "end"]);
addpath(d);
NelsonHelpClearReloadFr.Version
filewrite(file, ["classdef NelsonHelpClearReloadFr"; "  properties (Constant)"; "    Version = 2"; "  end"; "end"]);
clear classes
NelsonHelpClearReloadFr.Version
```


## 🔗 Voir aussi

[clearvars](../memory_manager/clearvars.md), [who](../memory_manager/who.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
