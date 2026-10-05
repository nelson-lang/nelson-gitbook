#import "nelson_help.typ": *

= csvwrite <spreadsheet:csvwrite>

Écrire un fichier de valeurs séparées par des virgules (CSV).

== Syntaxe

- #raw("csvwrite(filename, M)");
- #raw("csvwrite(filename, M, r, c)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier de destination.
/ M: une matrice numérique ou logique.
/ r, c: entier : décalage. par défaut : 0, 0

== Description

#strong[csvwrite]; écrit une matrice numérique dans un fichier au format CSV (valeurs séparées par des virgules).


== Exemple

``````matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
csvwrite(filename, A);
R = csvread(filename)
A = eye(3, 2);
csvwrite(filename, A);
R = fileread(filename)

``````


== Voir aussi

#nlink(<spreadsheet:csvread>)[csvread];, #nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
