#import "../nelson_help.typ": *

= isdst <time:5_query_date_time_arrays.isdst>

Teste si des valeurs datetime avec fuseau sont en heure d ete.

== Syntaxe

- #raw("tf = isdst(t)");

== Argument d'entrée

/ inputs: Un tableau datetime avec propriete TimeZone.

== Argument de sortie

/ output: Un tableau logique.

== Description

Teste si des valeurs datetime avec fuseau sont en heure d ete.

 isdst utilise les regles timezone embarquees pour les fuseaux nommes. Les decalages fixes n ont pas de transitions d heure d ete.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
isdst(datetime(2024, 1, 1, 'TimeZone', 'Europe/Paris'))
isdst(datetime(2024, 7, 1, 'TimeZone', 'Europe/Paris'))

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
