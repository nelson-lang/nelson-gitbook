#import "nelson_help.typ": *

= iswasm <os_functions:iswasm>

Vérifie si la version est pour la plateforme WebAssembly.

== Syntaxe

- #raw("s = iswasm()");

== Argument de sortie

/ s: un booléen : vrai si la plateforme est WebAssembly.

== Description

#strong[iswasm]; vérifie si la plateforme est WebAssembly.

 Renvoie #strong[true]; lorsque Nelson est exécuté depuis une compilation WebAssembly (dans un navigateur ou un environnement WebAssembly), et #strong[false]; sinon.


== Exemple

``````matlab
if iswasm
  disp('Your platform is WebAssembly')
else
  disp('Your platform is not WebAssembly')
end
``````


== Voir aussi

#nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:isunix>)[isunix];, #nlink(<os_functions:ismac>)[ismac];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
