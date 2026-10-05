#import "nelson_help.typ": *

= jlrunfile <julia_engine:jlrunfile>

Exécute un fichier Julia depuis Nelson.

== Syntaxe

- #raw("jlrunfile(filename)");
- #raw("jlrunfile(filename input)");
- #raw("outvars = jlrunfile(filename, outputs)");
- #raw("outvars = jlrunfile(filename, outputs, jlName, jlValue, ...)");

== Argument d'entrée

/ filename: un scalaire chaîne ou vecteur de caractères : nom de fichier .jl à exécuter.
/ "filename 'input' ": un scalaire chaîne ou vecteur de caractères : nom de fichier .jl à exécuter avec des arguments d'entrée.
/ jlName, jlValue: Noms et valeurs des arguments d'entrée.
/ outputs: tableau de chaînes : noms des variables Julia.

== Argument de sortie

/ outvars: Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous forme de types Julia valides.

== Description

#strong[jlrunfile(filename)]; exécute un fichier Julia.

 Comme la fonction #strong[jlrun];, les variables générées dans l'espace Julia via#strong[jlrunfile]; sont persistantes.

 Le code #strong[outvars \= jlrunfile(file, outputs, jlName1, jlValue2, ..., jlNameN, jlValueN)]; exécute le fichier avec un ou plusieurs arguments nom-valeur.


== Exemples

jlrunfile\_example\_1.jl

``````matlab
content = "hello Nelson"
display(content)
``````

jlrunfile from Nelson

``````matlab
jlrunfile('jlrunfile_example_1.jl')
``````


== Voir aussi

#nlink(<julia_engine:jlrun>)[jlrun];, #nlink(<julia_engine:jlenv>)[jlenv];, #nlink(<julia_engine:julia_types>)[Julia types supported];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.12.0], [version initiale],
)

// Auteur: Allan CORNET
