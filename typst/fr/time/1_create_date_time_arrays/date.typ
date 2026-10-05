#import "../nelson_help.typ": *

= date <time:1_create_date_time_arrays.date>

Retourne la date courante sous forme de vecteur de caractères.

== Syntaxe

- #raw("d = date()");

== Argument de sortie

/ d: une chaîne : date au format dd-MMM-yyyy. MMM : abréviation anglaise du mois.

== Description

#strong[d \= date()]; renvoie la date courante sous forme de vecteur de caractères au format#strong[dd-MMM-yyyy];.


== Exemple

``````matlab
d = date()
fix(c)
``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.now>)[now];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
