#import "../nelson_help.typ": *

= hour <time:3_date_time_components.hour>

Composante heures de la date et de l'heure d'entrée.

== Syntaxe

- #raw("h = hour(t)");
- #raw("h = hour(t, formatIn)");

== Argument d'entrée

/ t: numéro de date série ou chaînes de texte en entrée.
/ formatIn: format de date valide

== Argument de sortie

/ h: un double : valeur entière.

== Description

#strong[h \= hour(t)]; extrait la composante heures de chaque date et heure spécifiées dans#strong[t];.

 La sortie #strong[h]; est un tableau de double contenant des valeurs entières comprises entre 0 et 23.


== Exemple

``````matlab
h = hour(738427.656845093)
h = hour("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

``````


== Voir aussi

#nlink(<time:3_date_time_components.minute>)[minute];, #nlink(<time:3_date_time_components.second>)[second];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
