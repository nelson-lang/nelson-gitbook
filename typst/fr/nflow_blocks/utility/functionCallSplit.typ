#import "../nelson_help.typ": *

= functionCallSplit <nflow_blocks:utility.functionCallSplit>

Distribue un function-call à plusieurs callees, dans l'ordre.

== Syntaxe

- #raw("Type de bloc : functionCallSplit");

== Argument d'entrée

/ ports d'entrée: 1 entrée événement, pilotée par un functionCallGenerator (ou un autre split).

== Argument de sortie

/ ports de sortie: N sorties événement ; chacune pilote le port de contrôle d'un sous-système function-call.

== Description

Distribue un function-call à plusieurs callees, dans l'ordre.

 Un unique appel entrant est routé vers chaque callee câblé, dans l'ordre des ports de sortie : la sortie 0 s'exécute d'abord, puis la sortie 1, et ainsi de suite. Le bloc est un routeur résolu à la compilation ; il ne porte aucun état et ne s'exécute jamais de lui-même ; le moteur le résout en la liste ordonnée de callees du #nlink(<nflow_blocks:utility.functionCallGenerator>)[functionCallGenerator]; pilote. Les sorties peuvent aller vers des sous-systèmes function-call ou vers d'autres splits.

 Ce bloc n'a pas de paramètre.

 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [functionCallSplit], 
  [Famille], [Blocs utilitaires], 
  [Phases], [(aucune, résolu à la compilation)], 
)
 #strong[Capacites etendues];

 Generation de code : prise en charge pour C et Rust.


== Voir aussi

#nlink(<nflow_blocks:utility.functionCallGenerator>)[functionCallGenerator];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
