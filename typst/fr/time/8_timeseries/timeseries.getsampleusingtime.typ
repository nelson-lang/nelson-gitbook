#import "../nelson_help.typ": *

= timeseries.getsampleusingtime <time:8_timeseries.timeseries.getsampleusingtime>

Renvoie les echantillons selectionnes par temps.

== Syntaxe

- #raw("tsOut = getsampleusingtime(ts, t)");
- #raw("tsOut = getsampleusingtime(ts, t1, t2)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ t: Temps exact de l'echantillon.
/ t1: Temps de debut.
/ t2: Temps de fin.

== Argument de sortie

/ tsOut: Timeseries avec les echantillons selectionnes.

== Description

#strong[getsampleusingtime]; Selectionne des echantillons a des temps exacts ou dans un intervalle temporel ferme.


== Exemple

``````matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
ts2 = getsampleusingtime(ts, 2, 3);
ts2.Data

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
