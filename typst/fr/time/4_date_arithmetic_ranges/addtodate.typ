#import "../nelson_help.typ": *

= addtodate <time:4_date_arithmetic_ranges.addtodate>

Modifier un numéro de date par champ.

== Syntaxe

- #raw("r = addtodate(d, q, f)");

== Argument d'entrée

/ d: numéro de date série.
/ q: quantité à ajouter au champ de date
/ f: 'year', 'month', 'day', 'hour', 'minute', 'second' ou 'millisecond'.

== Argument de sortie

/ r: numéro de date résultant.

== Description

#strong[r \= addtodate(d, q, f)]; ajoute la quantité#strong[q]; au champ de date indiqué#strong[f]; d'un numéro de date série scalaire #strong[d];, et renvoie le numéro de date mis à jour #strong[r];.


== Exemple

``````matlab
t = datenum('07-Apr-2008 23:00:00');datevec(t)
t2 = addtodate(t, -2, 'hour');datevec(t2)
t3 = addtodate(t, 4, 'hour');datevec(t3)
``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];, #nlink(<time:1_create_date_time_arrays.datevec>)[datevec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
