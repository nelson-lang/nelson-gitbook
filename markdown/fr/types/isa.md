# isa

Renvoie true si une variable a la classe ou le type demande.

## 📝 Syntaxe

- res = isa(var, className)

## 📥 Argument d'entrée

- var - une variable
- className - un nom de classe ou de type sous forme de chaine

## 📤 Argument de sortie

- res - un logique : true ou false

## 📄 Description


<b>isa</b> renvoie un logique 1 quand <b>var</b> est une instance de <b>className</b>, et 0 sinon. 

<b>className</b> peut etre un nom de type Nelson comme <b>double</b>, <b>cell</b>, <b>numeric</b>, <b>float</b> ou <b>integer</b>. 

Pour les objets classdef, <b>isa</b> accepte le nom de classe et les noms de superclasses supportes, y compris <b>handle</b> pour les classes handle. 

Pour les tableaux sparse, <b>isa</b> teste la classe de valeur stockee, par exemple <b>double</b> ou <b>logical</b>. Utiliser <b>issparse</b> pour tester le stockage sparse.

## 💡 Exemples

Tester un type numerique.

```matlab
A = 3;
res = isa(A, 'double')
```
Tester la classe de valeur stockee d'un tableau sparse.

```matlab
S = sparse([2 0 3]);
isDouble = isa(S, 'double')
isSparse = issparse(S)
```
Tester un objet handle classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_isa/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsaCounter.m'], ["classdef NelsonHelpIsaCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpIsaCounter();
isCounter = isa(obj, 'NelsonHelpIsaCounter')
isHandle = isa(obj, 'handle')
delete(obj)
```


## 🔗 Voir aussi

[class](../types/class.md), [issparse](../types/issparse.md), [isobject](../types/isobject.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | support des objets classdef documente |
| 2.0.0   | les tableaux sparse sont testes par classe de valeur stockee |

<!--
## 👤 Auteur

Allan CORNET
-->
