#import "nelson_help.typ": *

= isgpuarray <gpu_engine:isgpuarray>

Indique si une valeur est un gpuArray.

== Syntaxe

- #raw("tf = isgpuarray(A)");

== Argument d'entrée

/ A: une valeur quelconque.

== Argument de sortie

/ tf: logique : true lorsque #strong[A]; est un gpuArray.

== Description

#strong[tf \= isgpuarray(A)]; renvoie #strong[true]; lorsque #strong[A]; est un #strong[gpuArray]; stocké sur le périphérique, et #strong[false]; sinon.


== Exemple

``````matlab
isgpuarray(gpuArray(single(1)))
isgpuarray(single(1))
``````


== Voir aussi

#nlink(<gpu_engine:gpuArray>)[gpuArray];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
