#import "nelson_help.typ": *

= maxNumCompThreads <core:maxNumCompThreads>

Nombre maximal de threads de calcul.

== Syntaxe

- #raw("T = maxNumCompThreads()");
- #raw("PREVIOUS_T = maxNumCompThreads(T)");
- #raw("PREVIOUS_T = maxNumCompThreads('automatic')");

== Argument d'entrée

/ T: une valeur entière : nombre de threads utilisés par Nelson pour les calculs.

== Argument de sortie

/ T: une valeur entière : nombre de threads utilisés par Nelson pour les calculs.
/ PREVIOUS\_T: une valeur entière : nombre précédent de threads utilisés par Nelson pour les calculs.

== Description

Retourne ou définit le nombre maximal de threads que Nelson peut utiliser pour le calcul parallèle.


== Exemple

``````matlab
maxNumCompThreads
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
