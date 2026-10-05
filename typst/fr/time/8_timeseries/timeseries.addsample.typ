#import "../nelson_help.typ": *

= timeseries.addsample <time:8_timeseries.timeseries.addsample>

Ajoute un echantillon a un objet timeseries.

== Syntaxe

- #raw("tsOut = addsample(ts, 'Time', t, 'Data', x)");
- #raw("tsOut = addsample(ts, 'Time', t, 'Data', x, 'Quality', q)");

== Argument d'entrée

/ ts: Objet timeseries en entree.
/ t: Temps d'echantillon a ajouter.
/ x: Donnees d'echantillon a ajouter.
/ q: Valeur de qualite optionnelle.

== Argument de sortie

/ tsOut: Objet timeseries en sortie avec l'echantillon ajoute.

== Description

#strong[addsample]; Ajoute un echantillon avec des paires nom-valeur. L'ordre des echantillons existants est preserve par l'operation d'ajout.


== Exemple

``````matlab
ts = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts = addsample(ts, 'Time', 12, 'Data', 3);
ts.Time

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
