#import "nelson_help.typ": *

= qml\_evaluatefile <qml_engine:qml_evaluatefile>

Évalue un fichier JS.

== Syntaxe

- #raw("r = qml_evaluatefile(filename)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier JS.

== Argument de sortie

/ r: a double, logical, int ou string.

== Description

Évalue un fichier JS.

 Si la valeur retournée ne peut pas être convertie en type de base, elle sera convertie en chaîne.


== Exemple

``````matlab
test_file = [tempdir() , '/example_qml_evaluatefile.js'];
f = fopen(test_file, 'wt');
fwrite(f, 'a = 2 + 4');
fclose(f);
qml_evaluatefile(test_file)
``````


== Voir aussi

#nlink(<qml_engine:qml_evaluatestring>)[qml\_evaluatestring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
