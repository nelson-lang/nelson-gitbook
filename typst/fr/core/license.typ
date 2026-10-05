#import "nelson_help.typ": *

= license <core:license>

Affiche les informations de licence.

== Syntaxe

- #raw("license");
- #raw("r = license");
- #raw("[r, txt] = license");

== Argument de sortie

/ r: a string: minimal string description about license
/ txt: a string: complete license text.

== Description

Affiche ou retourne les informations de licence associées à l'installation de Nelson.


== Exemple

``````matlab
license()
r = license()
[r,txt] = license()
``````


== Voir aussi

#nlink(<core:banner>)[banner];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
