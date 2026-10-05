#import "nelson_help.typ": *

= close\_system <nflow_engine:close_system>

Décharge un modèle nflow ; un modèle modifié requiert un indicateur de sauvegarde explicite.

== Syntaxe

- #raw("close_system(model)");
- #raw("close_system(model, saveFlag)");

== Argument d'entrée

/ args: see the syntaxes above.

== Argument de sortie

/ varargout: see the syntaxes above.

== Description

#strong[close\_system]; décharge un modèle nflow ; un modèle modifié requiert un indicateur de sauvegarde explicite.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_line('demo', 'Sine/1', 'Gain/1');
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:save_system>)[save\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
