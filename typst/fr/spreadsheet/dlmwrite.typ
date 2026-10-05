#import "nelson_help.typ": *

= dlmwrite <spreadsheet:dlmwrite>

Écrire une matrice numérique dans un fichier texte en utilisant un délimiteur.

== Syntaxe

- #raw("dlmwrite(filename, M)");
- #raw("dlmwrite(filename, M, delimiter)");
- #raw("dlmwrite(filename, M, '-append')");
- #raw("dlmwrite(filename, M, '-append', delimiter)");
- #raw("dlmwrite(filename, M, delimiter, r, c)");
- #raw("dlmwrite(filename, M, '-append', delimiter, r, c)");
- #raw("dlmwrite(filename, M, delimiter, r, c, eol)");
- #raw("dlmwrite(filename, M, '-append', delimiter, r, c, eol)");
- #raw("dlmwrite(filename, M, delimiter, r, c, eol, precision)");
- #raw("dlmwrite(filename, M, '-append', delimiter, r, c, eol, precision)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier de destination.
/ M: une matrice numérique ou logique.
/ delimiter: une chaîne : délimiteur ',' , '\\t', ';'. par défaut ','
/ r, c: entier : décalage. par défaut : 0, 0
/ eol: a string: 'pc' ou 'unix'.
/ precision: un entier ou une chaîne de format C. (par défaut : 5)

== Description

#strong[dlmwrite]; écrit une matrice numérique dans un fichier au format ASCII.


== Exemple

``````matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
dlmwrite(filename, A);
R = dlmread(filename)
A = eye(3, 2);
dlmwrite(filename, A, ';', 4, 5);
R = fileread(filename)

``````


== Voir aussi

#nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
