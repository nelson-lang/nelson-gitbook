#import "../nelson_help.typ": *

= timezones <time:5_query_date_time_arrays.timezones>

Liste les noms de fuseaux horaires disponibles dans la base embarquee.

== Syntaxe

- #raw("zones = timezones()");
- #raw("[zones, version] = timezones()");

== Argument d'entrée

/ inputs: Aucun argument d entree.

== Argument de sortie

/ output: Un tableau string de noms de zones et, optionnellement, une chaine de version des donnees.

== Description

Liste les noms de fuseaux horaires disponibles dans la base embarquee.

 La liste inclut les zones fournies par la petite base timezone embarquee et la pseudo-zone local.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
[zones, version] = timezones()
any(strcmp(cellstr(zones), 'Europe/Paris'))

``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datetime>)[datetime];, #nlink(<time:2_duration_calendar_duration.duration>)[duration];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
