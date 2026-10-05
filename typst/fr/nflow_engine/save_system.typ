#import "nelson_help.typ": *

= save\_system <nflow_engine:save_system>

Sauvegarde un modèle nflow dans un fichier .nflow.

== Syntaxe

- #raw("filename = save_system(model)");
- #raw("filename = save_system(model, filename)");

== Argument d'entrée

/ args: see the syntaxes above.

== Argument de sortie

/ varargout: see the syntaxes above.

== Description

#strong[save\_system]; sauvegarde un modèle nflow dans un fichier .nflow.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_line('demo', 'Sine/1', 'Gain/1');
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:close_system>)[close\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
