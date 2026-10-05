#import "nelson_help.typ": *

= getNFlowBlockHandle <nflow_engine:getNFlowBlockHandle>

Renvoie le handle d'un bloc par chemin, ou -1 si introuvable.

== Syntaxe

- #raw("h = getNFlowBlockHandle(path)");
- #raw("h = getNFlowBlockHandle(path, load)");

== Argument d'entrée

/ path: un chemin de bloc ('modèle\/NomDeBloc'), ou un tableau de cellules de chemins de blocs.
/ load: booléen optionnel ; si vrai, un modèle non chargé est chargé au préalable s'il peut être trouvé.

== Argument de sortie

/ h: le handle numérique du bloc, ou #strong[-1]; s'il est introuvable. Pour un tableau de cellules de chemins, un tableau numérique de même forme.

== Description

#strong[getNFlowBlockHandle]; renvoie le handle numérique d'un bloc à partir de son chemin, ou #strong[-1]; lorsque le bloc n'existe pas (aucune erreur n'est levée).

 Le handle est égal à #strong[get\_param(path, 'Handle')]; et peut être passé à #strong[get\_param]; et #strong[set\_param]; à la place du chemin. Un chemin qui ne désigne qu'un modèle (sans bloc) vaut #strong[-1];.

 Avec un tableau de cellules de chemins, le résultat est un tableau numérique de handles de même forme, chaque élément étant le handle ou #strong[-1];.

 Lorsque #strong[load]; vaut vrai et que le modèle n'est pas chargé, il est chargé au préalable s'il peut être trouvé ; sinon le résultat reste #strong[-1];.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getNFlowBlockHandle('demo/Gain')
missing = getNFlowBlockHandle('demo/None')
get_param(h, 'BlockType')
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:getfullname>)[getfullname];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:find_system>)[find\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
