#import "nelson_help.typ": *

= events <handle:events>

Renvoie les noms des evenements d'un objet ou d'une classe classdef.

== Syntaxe

- #raw("c = events(obj)");
- #raw("c = events(objArray)");
- #raw("c = events(className)");

== Argument d'entrée

/ obj: un objet classdef ou handle
/ objArray: un tableau d'objets classdef ou de handles
/ className: un nom de classe sous forme de chaine, y compris les noms qualifies par paquet

== Argument de sortie

/ c: un tableau (cell) de chaines

== Description

#strong[events]; renvoie les noms des evenements publics declares par une classe classdef.

 Les evenements caches et les evenements avec un acces d'ecoute non public sont omis de la liste retournee.

 Pour les tableaux d'objets classdef, #strong[events]; renvoie les evenements de la classe des elements.

 Les classes handle exposent aussi l'evenement #strong[ObjectBeingDestroyed];.


== Exemple

Lister les evenements declares par un tableau de handles classdef.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_events/'];
mkdir(d);
filewrite([d, '/NelsonHelpEventCounter.m'], ["classdef NelsonHelpEventCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
a = NelsonHelpEventCounter();
b = NelsonHelpEventCounter();
e = events([a, b]);
delete([a, b])
``````


== Voir aussi

#nlink(<handle:addlistener>)[addlistener];, #nlink(<handle:notify>)[notify];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [support classdef ajoute],
  [2.0.0], [support des tableaux d'objets classdef documente],
)

// Auteur: Allan CORNET
