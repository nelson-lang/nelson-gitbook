#import "nelson_help.typ": *

= nflow\_layout <nflow_engine:nflow_layout>

Dispose automatiquement les blocs d'un (sous-)système nflow.

== Syntaxe

- #raw("nflow_layout(sys)");

== Argument d'entrée

/ sys: une chaîne : nom d'un modèle chargé (#raw("'modele'");) pour disposer son diagramme racine, ou chemin d'un sous-système (#raw("'modele/Sub'");, #raw("'modele/Sub/Inner'");) pour disposer ce sous-système ; ou un handle numérique de modèle.

== Description

#strong[nflow\_layout]; calcule de nouvelles positions pour les blocs d'un (sous-)système à partir de leurs connexions : les sources à gauche, puis une colonne par niveau de connectivité, avec moins de croisements de fils, les boucles de retour prises en compte et les puits regroupés à droite.

 Seul le niveau ciblé est disposé : les blocs des sous-systèmes imbriqués gardent leur position ; appelez #strong[nflow\_layout]; sur le chemin de chaque sous-système pour le disposer aussi.

 Seule la géométrie change (#raw("Position"); des blocs) ; blocs, paramètres et connexions restent identiques, le résultat de simulation ne change donc pas. La disposition est déterministe : la relancer sur le même diagramme donne les mêmes positions.

 Le modèle doit être chargé (#strong[new\_system]; ou #strong[load\_system];). Un chemin de sous-système inconnu provoque une erreur. Le modèle est marqué comme modifié ; utilisez #strong[save\_system]; pour conserver la nouvelle disposition.


== Exemples

Construire un modèle par script, puis le disposer.

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G1', 'Gain', 2);
add_block('nflow/math/gain', 'demo/G2', 'Gain', 3);
add_line('demo', 'S/1', 'G1/1');
add_line('demo', 'S/1', 'G2/1');
nflow_layout('demo');
get_param('demo/S', 'Position')
get_param('demo/G1', 'Position')
get_param('demo/G2', 'Position')
bdclose('demo');
``````

Disposer un sous-système imbriqué.

``````matlab
new_system('demo');
add_block('subsystem', 'demo/Sub');
add_block('nflow/source/sine', 'demo/Sub/S');
add_block('nflow/math/gain', 'demo/Sub/G');
add_line('demo', 'Sub/S/1', 'Sub/G/1');
nflow_layout('demo/Sub');
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:nflow_reroute>)[nflow\_reroute];, #nlink(<nflow_engine:save_system>)[save\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
