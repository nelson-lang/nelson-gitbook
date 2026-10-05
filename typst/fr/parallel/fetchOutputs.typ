#import "nelson_help.typ": *

= fetchOutputs <parallel:fetchOutputs>

Récupérer les résultats d'une fonction s'exécutant dans le pool d'arrière-plan.

== Syntaxe

- #raw("[y1, ... , ym] = fetchOutputs(f)");

== Argument d'entrée

/ f: objet FevalFuture

== Argument de sortie

/ y1, ... , ym: sorties

== Description

#strong[\[y1, ... , ym\] \= fetchOutputs(f)]; récupère #strong[m]; résultats d'un tableau de #strong[Future]; #strong[f];.

 

 #strong[fetchOutputs]; attend que la fonction associée à #strong[f]; se termine avant de récupérer les résultats.

 Si #strong[fetchOutputs]; est appelé, la propriété Read de chaque élément de #strong[f]; est définie sur true.


== Exemples

Sequential version

``````matlab

tic()
R1 = magic(5000);
R2 = magic(5000);
toc()
size(R1)

``````

Parallel version

``````matlab

b = backgroundPool()
tic()
fptr = str2func('magic');
f1 = parfeval(b, fptr, 1, 5000);
f2 = parfeval(b, fptr, 1, 5000);
b
r1 = fetchOutputs(f1);
r2 = fetchOutputs(f2);
toc()
size(r1)
f1
f2
``````


== Voir aussi

#nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:backgroundPool>)[backgroundPool];, #nlink(<parallel:fetchNext>)[fetchNext];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
