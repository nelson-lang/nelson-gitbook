#import "nelson_help.typ": *

= new\_system <nflow_engine:new_system>

Crée et charge un modèle nflow vide.

== Syntaxe

- #raw("h = new_system()");
- #raw("h = new_system(name)");

== Argument d'entrée

/ name: une chaîne : un identifiant de modèle valide. Sans argument, un nom automatique est généré (#strong[untitled];, #strong[untitled1];, ...).

== Argument de sortie

/ h: un double : un handle vers le modèle chargé.

== Description

#strong[new\_system]; crée un modèle nflow vide et l'enregistre comme chargé. Le modèle est désigné ensuite par son handle ou par son nom.

 Les blocs s'ajoutent avec #strong[add\_block];, se connectent avec #strong[add\_line]; ou #strong[NFlow.connectBlocks];, se configurent avec #strong[set\_param];, se sauvegardent avec #strong[save\_system]; et s'ouvrent dans l'éditeur avec #strong[open\_system];.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_block('nflow/sink/scope', 'demo/Scope');
add_line('demo', 'Sine/1', 'Gain/1');
add_line('demo', 'Gain/1', 'Scope/1');
set_param('demo', 'StopTime', 10);
save_system('demo', [tempdir(), 'demo.nflow']);
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:save_system>)[save\_system];, #nlink(<nflow_engine:close_system>)[close\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
