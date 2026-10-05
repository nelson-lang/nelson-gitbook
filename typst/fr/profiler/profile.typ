#import "nelson_help.typ": *

= profile <profiler:profile>

Profiler le temps d'exécution des fonctions Macro.

== Syntaxe

- #raw("profile on");
- #raw("profile off");
- #raw("profile resume");
- #raw("profile clear");
- #raw("status = profile('status')");
- #raw("p = profile('info')");
- #raw("profile('show', sortOption)");
- #raw("profile('show', sortOption, nbLines)");

== Argument d'entrée

/ sortOption: chaîne : 'nfl' (par nom fichier ligne), 'line' (par ligne), 'percalls', 'totaltime', 'filename', 'function' ou 'nbcalls'.
/ nbLines: entier : nombre de lignes à afficher.

== Description

Le profiling permet de mesurer où les fonctions Macro passent leur temps d'exécution.

 #strong[s \= profile('status')]; renvoie une structure contenant le statut courant du profiler.

 #strong[p \= profile('info')]; renvoie une structure contenant les données de profiling collectées.

 #strong[profile('on')]; démarre le profiler.

 #strong[profile('off')]; arrête le profiler. Les données collectées pourront être récupérées ultérieurement avec#strong[p \= profile('info')];.

 #strong[profile('clear')]; efface les données collectées.

 #strong[profile('resume')]; redémarre et prolonge la collecte des données déjà recueillies.


== Exemples

``````matlab
profile on
sind(5)
profile off
profile('show')
profile('show', 'totaltime')
profile('show', 'totaltime', 4)

``````

``````matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])

``````


== Voir aussi

#nlink(<profiler:profsave>)[profsave];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
