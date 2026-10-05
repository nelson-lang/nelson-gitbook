#import "nelson_help.typ": *

= find\_system <nflow_engine:find_system>

Liste les blocs d'un modèle, éventuellement filtrés par type.

== Syntaxe

- #raw("paths = find_system(sys)");
- #raw("paths = find_system(sys, 'BlockType', type)");

== Argument d'entrée

/ args: voir les syntaxes ci-dessus.

== Argument de sortie

/ paths: un tableau de cellules de chaînes de chemins ('sys' et 'sys\/NomDeBloc').

== Description

#strong[find\_system]; liste les blocs d'un modèle, éventuellement filtrés par type.

 #strong[find\_system(sys)]; renvoie le modèle lui-même et chaque bloc sous lui, sous forme d'un tableau de cellules de chemins ('sys' et 'sys\/NomDeBloc').

 #strong[find\_system(sys, 'BlockType', type)]; renvoie uniquement les chemins des blocs dont le type est #strong[type]; (le modèle lui-même est omis). Une propriété inconnue est une erreur.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
paths = find_system('demo')
gains = find_system('demo', 'BlockType', 'gain')
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:set_param>)[set\_param];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
