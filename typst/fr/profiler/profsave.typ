#import "nelson_help.typ": *

= profsave <profiler:profsave>

Enregistrer les résultats du profilage au format HTML.

== Syntaxe

- #raw("profsave");
- #raw("profsave(profile_info)");
- #raw("profsave(profile_info, dirname)");

== Argument d'entrée

/ profile\_info: structure : résultat de profile('info')
/ dirname: chaîne : répertoire de destination.

== Description

#strong[profsave]; exporte les données de profiling en une série de fichiers HTML.

 L'argument #strong[profile\_info]; est la structure renvoyée par profile('info').

 Si non précisé, #strong[profsave]; utilisera le profil courant.


== Exemple

``````matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])

``````


== Voir aussi

#nlink(<profiler:profile>)[profile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
