#import "../nelson_help.typ": *

= timeseries.append <time:8_timeseries.timeseries.append>

Ajoute des echantillons timeseries.

== Syntaxe

- #raw("tsOut = append(ts1, ts2)");
- #raw("tsOut = append(ts1, ts2, ts3)");

== Argument d'entrée

/ ts1: Premier objet timeseries.
/ ts2: Objet timeseries a ajouter.

== Argument de sortie

/ tsOut: Objet timeseries en sortie avec les echantillons ajoutes.

== Description

#strong[append]; Concatene les echantillons de deux objets timeseries ou plus le long de la dimension des echantillons.


== Exemple

``````matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts2 = timeseries(3, 12, 'Name', 'speed');
ts = append(ts1, ts2);
ts.Data

``````


== Voir aussi

#nlink(<time:8_timeseries.timeseries>)[timeseries];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
