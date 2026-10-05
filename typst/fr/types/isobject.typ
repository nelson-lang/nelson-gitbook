#import "nelson_help.typ": *

= isobject <types:isobject>

Renvoie true si une variable est un objet.

== Syntaxe

- #raw("res = isobject(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : true ou false

== Description

#strong[isobject]; renvoie un logique 1 si #strong[var]; est un objet Nelson, et 0 sinon.

 Les objets valeur classdef et les objets handle classdef sont indiques comme objets.


== Exemple

Tester des objets classdef valeur et handle.

``````matlab
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
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<types:ishandle>)[ishandle];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [support des objets classdef valeur et handle documente],
)

// Auteur: Allan CORNET
