#import "../nelson_help.typ": *

= second <time:3_date_time_components.second>

Composante secondes de la date et de l'heure d'entrée.

== Syntaxe

- #raw("s = second(t)");
- #raw("s = second(t, formatIn)");

== Argument d'entrée

/ t: numéro de date série ou chaînes de texte en entrée.
/ formatIn: format de date valide

== Argument de sortie

/ s: un double : valeur entière.

== Description

#strong[s \= second(t)]; extracts the second component from each date and time specified in#strong[t];.

 The output#strong[s]; is a double array containing integer values ranging from 0 to 59.


== Exemple

``````matlab
s = second(738427.656845093)
s = second("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

``````


== Voir aussi

#nlink(<time:3_date_time_components.minute>)[minute];, #nlink(<time:3_date_time_components.hour>)[hour];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
