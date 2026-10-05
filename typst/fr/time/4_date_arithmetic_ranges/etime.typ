#import "../nelson_help.typ": *

= etime <time:4_date_arithmetic_ranges.etime>

Temps écoulé entre des vecteurs de date.

== Syntaxe

- #raw("e = etime(t2, t1)");

== Argument d'entrée

/ t2: vecteurs de date : vecteur 1x6 ou matrice m-by-6.
/ t1: vecteurs de date : vecteur 1x6 ou matrice m-by-6.

== Argument de sortie

/ e: un scalaire ou un vecteur : temps écoulé (secondes).

== Description

#strong[e \= etime(t2, t1)]; retourne le nombre de secondes entre deux vecteurs de date ou matrices de vecteurs de date,#strong[t1]; et #strong[t2];.


== Exemple

``````matlab
t1 = clock()
sleep(6)
t2 = clock()
etime(t2, t1)
``````


== Voir aussi

#nlink(<time:7_timers.tic>)[tic];, #nlink(<time:7_timers.toc>)[toc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
