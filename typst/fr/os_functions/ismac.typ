#import "nelson_help.typ": *

= ismac <os_functions:ismac>

Vérifie si la version est pour la plateforme macOS.

== Syntaxe

- #raw("s = ismac()");

== Argument de sortie

/ s: un booléen : vrai si la plateforme est macOS.

== Description

#strong[ismac]; vérifie si la plateforme est macOS.


== Exemple

``````matlab
if ismac
  disp('Your platform is MacOs')
else
  disp('Your platform is not MacOs')
end
``````


== Voir aussi

#nlink(<os_functions:isunix>)[isunix];, #nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:iswasm>)[iswasm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
