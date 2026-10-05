#import "nelson_help.typ": *

= class <types:class>

Renvoie le nom de classe d'une variable ou cree un objet nomme ancien style.

== Syntaxe

- #raw("name = class(var)");
- #raw("obj = class(st, className)");

== Argument d'entrée

/ var: une variable
/ st: une structure
/ className: un nom de classe sous forme de chaine

== Argument de sortie

/ name: une chaine
/ obj: un objet ancien style de type #strong[className]; base sur la structure #strong[st];

== Description

#strong[class(var)]; renvoie le nom de classe de #strong[var];.

 Pour les tableaux sparse, #strong[class]; renvoie la classe de valeur stockee, par exemple #strong[double]; ou #strong[logical];. Utiliser #strong[issparse]; pour tester le stockage sparse.

 Pour les objets classdef valeur et handle, #strong[class]; renvoie le nom de la classe classdef, avec le paquet si necessaire.

 #strong[class(st, className)]; conserve la creation d'objets Nelson ancien style et reste independant des definitions classdef.


== Exemples

Renvoie le nom d'une classe integree.

``````matlab
A = 3;
name = class(A)
``````

Renvoie la classe de valeur stockee d'un tableau sparse.

``````matlab
S = sparse([2 0 3]);
name = class(S)
tf = issparse(S)
``````

Renvoie les noms de classes classdef valeur et handle.

``````matlab
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
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<types:issparse>)[issparse];, #nlink(<types:isobject>)[isobject];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [comportement des objets classdef valeur et handle documente],
  [2.0.0], [les tableaux sparse indiquent leur classe de valeur stockee],
)

// Auteur: Allan CORNET
