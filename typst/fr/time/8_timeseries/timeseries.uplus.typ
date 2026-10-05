#import "../nelson_help.typ": *

= timeseries.uplus <time:8_timeseries.timeseries.uplus>

Plus unaire pour les données d'un timeseries.

== Syntaxe

- #raw("tsOut = uplus(ts)");
- #raw("tsOut = +ts");

== Argument d'entrée

/ ts: Objet timeseries en entree.

== Argument de sortie

/ tsOut: Objet timeseries de sortie avec des donnees inchangees.

== Description

#strong[uplus]; retourne un timeseries avec des données inchangées.


== Exemple

``````matlab
ts = timeseries([1; 2], [1; 2]);
out = +ts;
out.Data

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
