#import "nelson_help.typ": *

= afterAll <parallel:afterAll>

Exécuter une fonction après que toutes les fonctions en arrière-plan soient terminées.

== Syntaxe

- #raw("B = afterAll(F, fcn, n)");

== Argument d'entrée

/ F: objet Future en entrée (scalaire ou tableau).
/ fcn: handle de fonction : fonction à exécuter après toutes les futures en entrée.
/ n: nombre d'arguments de sortie.

== Argument de sortie

/ B: objet AfterAllFuture.

== Description

#strong[B \= afterAll(F, fcn, n)]; renvoie un objet AfterAllFuture #strong[B];.

 La fonction #strong[fcn]; est automatiquement exécutée une fois que tous les éléments du tableau Future #strong[F]; sont terminés.

 Si l'un des éléments de #strong[F]; rencontre une erreur, la propriété #strong[Error]; de #strong[B]; contient l'erreur.


== Exemple

``````matlab
pool = backgroundPool()
fptrRand = str2func('rand')
fptrMax = str2func('@(r) max(r)')
fptrMin = str2func('@(r) min(r)')
for idx= 1:10
    f(idx) = parfeval(pool, fptrRand, 1, 1000, 1);
end
maxFuture = afterEach(f, fptrMax, 1);
minFuture = afterAll(maxFuture, fptrMin, 1);
fetchOutputs(minFuture)
fetchOutputs(maxFuture)
``````


== Voir aussi

#nlink(<parallel:backgroundPool>)[backgroundPool];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];, #nlink(<parallel:afterEach>)[afterEach];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
