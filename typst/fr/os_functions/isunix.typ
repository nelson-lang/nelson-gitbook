#import "nelson_help.typ": *

= isunix <os_functions:isunix>

Vérifie si la version est pour une plateforme GNU\/Linux ou Unix.

== Syntaxe

- #raw("s = isunix()");

== Argument de sortie

/ s: un booléen : vrai si la plateforme est GNU\/Linux ou Unix.

== Description

#strong[isunix]; vérifie si la plateforme est GNU\/Linux ou Unix.

 La plateforme macOS est également détectée comme étant GNU\/Linux ou Unix.


== Exemple

``````matlab
if isunix
  disp('Your platform is Unix or Linux')
else
  disp('Your platform is Unix or Linux')
end
``````


== Voir aussi

#nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:ismac>)[ismac];, #nlink(<os_functions:iswasm>)[iswasm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
