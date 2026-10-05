#import "nelson_help.typ": *

= listener <handle:listener>

Cree un ecouteur d'evenement classdef.

== Syntaxe

- #raw("lh = listener(obj, eventName, callback)");
- #raw("lh = listener(obj, propertyName, propertyEvent, callback)");

== Argument d'entrée

/ obj: un objet handle classdef
/ eventName: un nom d'evenement sous forme de chaine
/ callback: un handle de fonction appele avec les arguments source et donnees d'evenement

== Argument de sortie

/ lh: un handle event.listener

== Description

#strong[listener]; est un alias de #strong[addlistener]; pour les objets handle classdef et les proprietes observables.


== Exemple

Creer un ecouteur pour un evenement.

``````matlab
d = [tempdir(), 'nelson_help_listener/'];
mkdir(d);
filewrite([d, '/NelsonHelpListenerCounter.m'], ["classdef NelsonHelpListenerCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpListenerCounter();
lh = listener(counter, 'CountChanged', @(src, eventData) disp('changed'));
counter.trigger();
delete(lh);
delete(counter)
``````


== Voir aussi

#nlink(<handle:addlistener>)[addlistener];, #nlink(<handle:notify>)[notify];, #nlink(<handle:events>)[events];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [support des ecouteurs classdef ajoute],
)

// Auteur: Allan CORNET
