#import "../nelson_help.typ": *

= timeit <time:7_timers.timeit>

Mesure le temps nécessaire à l'exécution d'une fonction.

== Syntaxe

- #raw("t = timeit(f)");
- #raw("t = timeit(f, nLhs)");
- #raw("t = timeit(f, nLhs, x1, ..., xm)");

== Argument d'entrée

/ f: handle de fonction : fonction à exécuter.
/ nLhs: entier : nombre d'arguments de sortie (1 par défaut).
/ x1, ..., xm: arguments d'entrée : liste séparée par des virgules de variables ou d'expressions.

== Argument de sortie

/ t: temps (en secondes).

== Description

#strong[t \= timeit(f)]; mesure le temps nécessaire à l'exécution de la fonction indiquée par le handle de fonction#strong[f];.

 Pour obtenir une mesure robuste,#strong[timeit]; appelle la fonction plusieurs fois et renvoie la médiane des mesures.

 Si la fonction est rapide,#strong[timeit]; pourra appeler la fonction de nombreuses fois.


== Exemples

``````matlab

f = str2func('@()sleep(6)');
tic();t = timeit(f), toc()
``````

``````matlab
X = rand(100);
f = str2func('@(X) svd(X);');
tic(), t1 = timeit(f, 1, X), toc()
tic(), t2 = timeit(f, 3, X), toc()
``````


== Voir aussi

#nlink(<time:7_timers.tic>)[tic];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
