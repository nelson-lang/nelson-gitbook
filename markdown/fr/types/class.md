# class

Renvoie le nom de classe d'une variable ou cree un objet nomme ancien style.

## 📝 Syntaxe

- name = class(var)
- obj = class(st, className)

## 📥 Argument d'entrée

- var - une variable
- st - une structure
- className - un nom de classe sous forme de chaine

## 📤 Argument de sortie

- name - une chaine
- obj - un objet ancien style de type <b>className</b> base sur la structure <b>st</b>

## 📄 Description

<b>class(var)</b> renvoie le nom de classe de <b>var</b>.

Pour les tableaux sparse, <b>class</b> renvoie la classe de valeur stockee, par exemple <b>double</b> ou <b>logical</b>. Utiliser <b>issparse</b> pour tester le stockage sparse.

Pour les objets classdef valeur et handle, <b>class</b> renvoie le nom de la classe classdef, avec le paquet si necessaire.

<b>class(st, className)</b> conserve la creation d'objets Nelson ancien style et reste independant des definitions classdef.

## 💡 Exemples

Renvoie le nom d'une classe integree.

```matlab
A = 3;
name = class(A)
```

Renvoie la classe de valeur stockee d'un tableau sparse.

```matlab
S = sparse([2 0 3]);
name = class(S)
tf = issparse(S)
```

Renvoie les noms de classes classdef valeur et handle.

```matlab
clear classes
d = [tempdir(), 'nelson_help_class/'];
mkdir(d);
filewrite([d, '/NelsonHelpClassPoint.m'], ["classdef NelsonHelpClassPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
filewrite([d, '/NelsonHelpClassCounter.m'], ["classdef NelsonHelpClassCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
p = NelsonHelpClassPoint();
h = NelsonHelpClassCounter();
pointClass = class(p)
handleClass = class(h)
delete(h)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [issparse](../types/issparse.md), [isobject](../types/isobject.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description                                              |
| ------- | ----------------------------------------------------------- |
| 1.0.0   | version initiale                                            |
| 2.0.0   | comportement des objets classdef valeur et handle documente |
| 2.0.0   | les tableaux sparse indiquent leur classe de valeur stockee |

<!--
## 👤 Auteur

Allan CORNET
-->
