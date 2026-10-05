#import "nelson_help.typ": *

= bdroot <nflow_engine:bdroot>

Renvoie le modèle de plus haut niveau d'un chemin de bloc.

== Syntaxe

- #raw("root = bdroot(obj)");

== Argument d'entrée

/ obj: un nom de modèle ou un chemin de bloc ('modèle' ou 'modèle\/NomDeBloc').

== Argument de sortie

/ root: le nom du modèle de plus haut niveau (la partie avant le premier '\/').

== Description

#strong[bdroot]; renvoie le modèle de plus haut niveau d'un chemin de bloc.

 #strong[bdroot('modele')]; vaut #strong['modele']; ; #strong[bdroot('modele\/Sub\/Blk')]; vaut #strong['modele'];. Le modèle racine doit être chargé.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
root = bdroot('demo/Gain')
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:find_system>)[find\_system];, #nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:get_param>)[get\_param];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
