#import "../nelson_help.typ": *

= timeseries.idealfilter <time:8_timeseries.timeseries.idealfilter>

Applique un filtre ideal dans le domaine frequentiel aux donnees timeseries.

== Syntaxe

- #raw("tsOut = idealfilter(ts, band)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ band: Bande de frequences a deux elements.

== Argument de sortie

/ tsOut: Objet timeseries filtre en sortie.

== Description

#strong[idealfilter]; Filtre les donnees numeriques avec la bande de frequences ideale demandee et preserve l'axe temporel.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts2 = idealfilter(ts, [0 1]);
size(ts2.Data)

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
