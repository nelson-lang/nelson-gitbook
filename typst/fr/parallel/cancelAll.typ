#import "nelson_help.typ": *

= cancelAll <parallel:cancelAll>

Arrêter toutes les fonctions s'exécutant en arrière-plan.

== Syntaxe

- #raw("cancelAll(fevalQueue)");

== Argument d'entrée

/ fevalQueue: objet FevalQueue : scalaire.

== Description

#strong[cancelAll(fevalQueue)]; arrête tous les éléments en cours d'exécution ou en file d'attente du pool d'arrière-plan.


== Exemple

``````matlab
fptr = str2func('pause');
pool = backgroundPool;
pool.FevalQueue
f = parfeval(pool, fptr, 0, Inf);
f
pool.FevalQueue
cancelAll(pool.FevalQueue)
pool.FevalQueue
f
``````


== Voir aussi

#nlink(<core:pause>)[pause];, #nlink(<parallel:cancel>)[cancel];, #nlink(<parallel:parfeval>)[parfeval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
