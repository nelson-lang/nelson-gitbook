#import "nelson_help.typ": *

= ispc <os_functions:ispc>

Vérifie si la version est pour la plateforme Windows.

== Syntaxe

- #raw("s = ispc()");

== Argument de sortie

/ s: un booléen : vrai si la plateforme est Windows.

== Description

#strong[ispc]; vérifie si la plateforme est Windows.


== Exemple

``````matlab
if ispc
  disp('Your platform is Windows')
else
  disp('Your platform is not Windows')
end
``````


== Voir aussi

#nlink(<os_functions:isunix>)[isunix];, #nlink(<os_functions:ismac>)[ismac];, #nlink(<os_functions:iswasm>)[iswasm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
