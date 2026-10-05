#import "../nelson_help.typ": *

= weekday <time:3_date_time_components.weekday>

Renvoie le jour de la semaine.

== Syntaxe

- #raw("number = weekday(D)");
- #raw("[number, name] = weekday(D)");
- #raw("[number, name] = weekday(D, form)");
- #raw("[number, name] = weekday(D, language)");
- #raw("[number, name] = weekday(D, form, language)");

== Argument d'entrée

/ D: numéros de date série ou texte représentant des dates et heures (vecteur, matrice, vecteur de caractères, cellule de vecteurs de caractères, tableau de chaînes ou tableau de caractères).
/ form: une chaîne : 'short' (par défaut) ou 'long'.
/ language: une chaîne : 'fr\_FR' (par défaut) ou 'local'.

== Argument de sortie

/ number: tableau d'entiers dans l'intervalle \[1, 7\].
/ name: tableau de caractères. Si 'local' est utilisé et que la traduction du nom du jour est disponible, la sortie utilisera la langue locale courante.

== Description

#strong[weekday]; renvoie le jour de la semaine sous forme numérique dans#strong[number]; et sous forme textuelle dans #strong[name];.


== Exemple

``````matlab

[DayNumber, DayName] = weekday(datenum('12-21-2012'), 'long', 'fr_FR')
[DayNumber, DayName] = weekday(datenum('12-21-2012'), 'long', 'local')

``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datevec>)[datevec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
