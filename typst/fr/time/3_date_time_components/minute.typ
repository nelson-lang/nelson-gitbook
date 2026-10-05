#import "../nelson_help.typ": *

= minute <time:3_date_time_components.minute>

Composante minutes de la date et de l'heure d'entrée.

== Syntaxe

- #raw("m = minute(t)");
- #raw("m = minute(t, formatIn)");

== Argument d'entrée

/ t: numéro de date série ou chaînes de texte en entrée.
/ formatIn: format de date valide

== Argument de sortie

/ m: un double : valeur entière.

== Description

#strong[m \= minute(t)]; extracts the minute component from each date and time specified in#strong[t];.

 The output#strong[m]; is a double array containing integer values ranging from 0 to 59.


== Exemple

``````matlab
m = minute(738427.656845093)
m = minute("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

``````


== Voir aussi

#nlink(<time:3_date_time_components.hour>)[hour];, #nlink(<time:3_date_time_components.second>)[second];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
