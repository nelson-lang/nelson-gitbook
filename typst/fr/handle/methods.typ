#import "nelson_help.typ": *

= methods <handle:methods>

Renvoie les noms des methodes publiques d'un objet ou d'une classe.

== Syntaxe

- #raw("c = methods(h)");
- #raw("c = methods(obj)");
- #raw("c = methods(className)");

== Argument d'entrée

/ h: un objet handle
/ obj: un objet classdef
/ className: un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

== Argument de sortie

/ c: un tableau (cell) de chaines

== Description

#strong[methods]; renvoie un tableau de chaines contenant les noms des methodes publiques.

 Pour les classes classdef, les methodes privees ou protegees ne sont pas listees. Les methodes statiques sont listees et peuvent etre appelees avec #strong[ClassName.method];.

 Pour les tableaux d'objets classdef, #strong[methods]; renvoie les methodes publiques de la classe des elements.


== Exemple

Lister les methodes publiques d'un tableau d'objets classdef.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_methods/'];
mkdir(d);
filewrite([d, '/NelsonHelpMethodsPoint.m'], ["classdef NelsonHelpMethodsPoint"; "  properties"; "    X = 0"; "  end"; "  methods"; "    function r = value(obj)"; "      r = obj.X;"; "    end"; "  end"; "end"]);
addpath(d);
a = NelsonHelpMethodsPoint();
b = NelsonHelpMethodsPoint();
m = methods([a, b])
``````


== Voir aussi

#nlink(<handle:isprop>)[isprop];, #nlink(<handle:ismethod>)[ismethod];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [support des noms de classe classdef ajoute],
  [2.0.0], [support des tableaux d'objets classdef ajoute],
)

// Auteur: Allan CORNET
