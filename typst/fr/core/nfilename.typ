#import "nelson_help.typ": *

= nfilename <core:nfilename>

Nom du fichier courant exécuté.

== Syntaxe

- #raw("R = nfilename()");
- #raw("R = nfilename('fullpath')");
- #raw("R = nfilename('fullpathext')");

== Argument de sortie

/ R: une chaîne : le chemin du fichier fonctionnant actuellement

== Description

Renvoie le nom du fichier de script actuellement exécuté ou évalué.


== Voir aussi

#nlink(<core:nargin>)[nargin];, #nlink(<core:nargout>)[nargout];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
