#import "nelson_help.typ": *

= properties <handle:properties>

Renvoie les noms des proprietes publiques d'un objet ou d'une classe.

== Syntaxe

- #raw("properties(h)");
- #raw("c = properties(h)");
- #raw("c = properties(obj)");
- #raw("c = properties(className)");

== Argument d'entrée

/ h: un objet handle
/ obj: un objet classdef
/ className: un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

== Argument de sortie

/ c: un tableau (cell) de chaines

== Description

#strong[properties]; renvoie un tableau de chaines contenant les noms des proprietes publiques.

 Pour les classes classdef, les proprietes privees, protegees et limitees par liste d'acces ne sont pas listees. Les proprietes constantes peuvent etre lues avec #strong[ClassName.PropertyName];.

 Pour les tableaux d'objets classdef, #strong[properties]; renvoie les proprietes publiques de la classe des elements.

 Les proprietes dependantes et les evenements automatiques de proprietes observables sont analyses comme attributs, mais le dispatch des methodes get\/set et les notifications automatiques restent limites.


== Exemple

Lister les proprietes publiques d'un tableau d'objets classdef.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_properties/'];
mkdir(d);
filewrite([d, '/NelsonHelpPropertiesPoint.m'], ["classdef NelsonHelpPropertiesPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpPropertiesPoint();
b = NelsonHelpPropertiesPoint();
p = properties([a, b])
``````


== Voir aussi

#nlink(<handle:isprop>)[isprop];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [support des noms de classe classdef ajoute],
  [2.0.0], [support des tableaux d'objets classdef ajoute],
)

// Auteur: Allan CORNET
