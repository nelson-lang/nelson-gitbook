#import "nelson_help.typ": *

= rehash <functions_manager:rehash>

Réinitialise le cache des répertoires du chemin de recherche de Nelson.

== Syntaxe

- #raw("rehash");

== Description

#strong[rehash()]; réinitialise le cache des répertoires du chemin de recherche de Nelson.

 Cela se produit chaque fois que Nelson affiche l'invite.

 Vous devriez utiliser #strong[rehash()]; uniquement lorsque vous exécutez un fichier .m qui met à jour un autre fichier .m


== Exemple

``````matlab
rehash()
``````


== Voir aussi

#nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:path>)[path];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
