#import "../nelson_help.typ": *

= timeseries.get <time:8_timeseries.timeseries.get>

Obtient la valeur d'une propriété d'un timeseries.

== Syntaxe

- #raw("value = get(ts, 'PropertyName')");
- #raw("values = get(ts)");

== Argument d'entrée

/ ts: Objet timeseries.
/ PropertyName: Nom de la propriété à interroger, telle que Name, Data, Time, DataInfo ou Events.

== Argument de sortie

/ value: Valeur de la propriété demandée.
/ values: Structure contenant les valeurs des propriétés publiques.

== Description

#strong[get]; retourne la valeur d'une propriété nommée d'un timeseries. Appeler get avec uniquement l'objet retourne l'ensemble des propriétés publiques.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
name = get(ts, 'Name')
time = get(ts, 'Time')

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
