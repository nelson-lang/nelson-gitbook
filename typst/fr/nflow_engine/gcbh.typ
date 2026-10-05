#import "nelson_help.typ": *

= gcbh <nflow_engine:gcbh>

Renvoie le handle du bloc courant.

== Syntaxe

- #raw("h = gcbh()");

== Argument d'entrée

/ : 

== Argument de sortie

/ h: un handle numérique du bloc courant, ou la matrice vide #strong[\[\]]; lorsqu'aucun bloc n'est sélectionné.

== Description

#strong[gcbh]; renvoie un handle numérique du bloc courant, le bloc sélectionné dans l'éditeur (le même bloc que #strong[gcb]; renvoie sous forme de chemin).

 Le handle est une valeur de type référence que l'on peut passer à #strong[get\_param]; et #strong[set\_param]; à la place du chemin du bloc. Il reste valide jusqu'à ce que le bloc soit supprimé ou que son modèle soit fermé.

 #strong[gcbh]; renvoie la matrice vide #strong[\[\]]; lorsqu'aucun bloc n'est sélectionné ou qu'aucun éditeur n'est actif, à l'image de #strong[gcb]; qui renvoie la chaîne vide dans ce cas.


== Exemple

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
set_param('demo/Gain', 'Gain', '2');
% Dans l'editeur, gcbh() renvoie le handle du bloc selectionne.
% Le meme handle s'obtient par chemin avec get_param(chemin, 'Handle') :
h = get_param('demo/Gain', 'Handle')
get_param(h, 'Gain')
bdclose('demo');
``````


== Voir aussi

#nlink(<nflow_engine:getNFlowBlockHandle>)[getNFlowBlockHandle];, #nlink(<nflow_engine:getfullname>)[getfullname];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:find_system>)[find\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
