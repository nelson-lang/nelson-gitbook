#import "nelson_help.typ": *

= getfullname <nflow_engine:getfullname>

Renvoie le chemin complet d'un bloc ou d'un modèle depuis son handle.

== Syntaxe

- #raw("path = getfullname(handle)");

== Argument d'entrée

/ handle: un handle numérique (bloc ou modèle), un chemin de bloc (char), ou un tableau de cellules de handles.

== Argument de sortie

/ path: le chemin complet : 'modèle\/NomDeBloc' pour un handle de bloc, 'modèle' pour un handle de modèle. Un tableau de cellules de handles renvoie un tableau de cellules de chemins.

== Description

#strong[getfullname]; renvoie le chemin complet qui identifie le bloc ou le modèle désigné par un handle. Un handle de bloc donne #strong['modèle\/NomDeBloc']; ; un handle de modèle donne #strong['modèle'];.

 C'est l'inverse de #strong[getNFlowBlockHandle];. Un chemin (char) est déjà un nom complet et est renvoyé tel quel. Un tableau de cellules de handles renvoie un tableau de cellules de chemins de même forme.

 Un handle inconnu lève une erreur.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getNFlowBlockHandle('demo/Gain');
path = getfullname(h)
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:getNFlowBlockHandle>)[getNFlowBlockHandle];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:find_system>)[find\_system];, #nlink(<nflow_engine:bdroot>)[bdroot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
