#import "../nelson_help.typ": *

= calendar <time:1_create_date_time_arrays.calendar>

Calendar.

== Syntaxe

- #raw("calendar()");
- #raw("c = calendar()");
- #raw("c = calendar(d)");
- #raw("c = calendar(y, m)");

== Argument d'entrée

/ d: un entier : numéro de date série.
/ y: un entier : année souhaitée \[1400, 9999\].
/ m: un entier : mois souhaité \[1, 12\].

== Argument de sortie

/ c: une matrice 6x7.

== Description

#strong[calendar()]; returns the currently monthly calendar.

 If no output arguments are specified,the calendar is displayed on the screen instead of returning a matrix 6x7.


== Exemple

``````matlab
calendar()
c = calendar(1973, 8)
c = calendar(datenum(1973, 8, 4))
``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
