#import "nelson_help.typ": *

= celldisp <data_structures:celldisp>

Afficher le contenu d'un tableau cellulaire.

== Syntaxe

- #raw("celldisp(C)");
- #raw("celldisp(C, name)");

== Argument d'entrée

/ C: tableau cellulaire.
/ name: nom affiché du tableau cellulaire.

== Description

#strong[celldisp]; affiche récursivement le contenu d'un tableau cellulaire.


== Exemple

``````matlab
C = {2, 22, 'ff', {331, 332}};
celldisp(C)
celldisp(C, 'var_name')
``````


== Voir aussi

#nlink(<display_format:disp>)[disp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
