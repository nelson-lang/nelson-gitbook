#import "nelson_help.typ": *

= fetchNext <parallel:fetchNext>

Récupérer les prochaines sorties non lues d'un tableau FevalFuture.

== Syntaxe

- #raw("[idx, y1, ... , ym] = fetchNext(f)");
- #raw("[idx, y1, ... , ym] = fetchNext(f, timeout)");

== Argument d'entrée

/ f: objet FevalFuture
/ timeout: durée en secondes : attend au maximum #emph[timeout]; secondes qu'un résultat dans#strong[f]; devienne disponible.

== Argument de sortie

/ idx: Indice dans le tableau FevalFuture, renvoyé comme scalaire entier.
/ y1, ... , ym: sorties

== Description

#strong[\[idx, y1, ... , ym\] \= fetchNext(f)]; récupère l'indice #strong[idx]; du nouvel objet #strong[FevalFuture]; lisible dans le tableau #strong[f]; qui est terminé, ainsi que #strong[m]; résultats de ce FevalFuture en tant que #strong[Y1, ... , Ym];.

 


== Exemple

``````matlab

tic()
N = 100;
for idx = N:-1:1
    F(idx) = parfeval(backgroundPool,str2func('rank'),1,magic(idx));
end
results = zeros(1,N);
for idx = 1:N
    [finishedIdx, result] = fetchNext(F);
    results(finishedIdx) = result;
    disp(sprintf('Result: %d', result));
end
toc()

``````


== Voir aussi

#nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];, #nlink(<parallel:backgroundPool>)[backgroundPool];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
