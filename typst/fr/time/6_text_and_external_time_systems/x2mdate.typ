#import "../nelson_help.typ": *

= x2mdate <time:6_text_and_external_time_systems.x2mdate>

Convertit des numeros de date serie tableur en dates serie Nelson ou datetime.

== Syntaxe

- #raw("m = x2mdate(x)");
- #raw("t = x2mdate(x, 'datetime')");

== Argument d'entrée

/ inputs: Numeros de date serie tableur et type de sortie optionnel datetime.

== Argument de sortie

/ output: Numeros de date serie Nelson par defaut, ou tableau datetime si demande.

== Description

Convertit des numeros de date serie tableur en dates serie Nelson ou datetime.

 x2mdate ajoute l origine tableur 1899-12-30. Passez datetime en second argument pour construire directement une sortie datetime.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
x2mdate(2)
x2mdate(2, 'datetime')

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
