#import "nelson_help.typ": *

= missing <types:missing>

Renvoie une valeur manquante.

== Syntaxe

- #raw("m = missing()");

== Argument de sortie

/ m: une valeur manquante utilisable dans les tableaux et les tables

== Description

#strong[missing]; renvoie une valeur spéciale représentant une donnée manquante (non définie). Lorsqu'elle est assignée dans un tableau ou une table, la valeur #strong[missing]; est automatiquement convertie en la valeur manquante standard utilisée par le type de données du tableau. Une affectation indexée comme #strong[A(k) \= missing]; ou #strong[A(:) \= missing]; conserve la classe de #strong[A]; : #strong[missing]; devient #strong[NaN]; dans un tableau #strong[double]; ou #strong[single];, #strong[\<missing\>]; dans un tableau #strong[string];, #strong[NaN]; dans un tableau #strong[duration]; et #strong[NaT]; dans un tableau #strong[datetime];. Les tableaux des autres classes (char, logical, entiers, cell) n'ont pas de valeur manquante et l'affectation lève une erreur.

 La concaténation suit les mêmes règles : #strong[\[missing missing\]]; est un tableau #strong[missing]; 1x2, #strong[\[missing 1\]]; vaut #strong[\[NaN 1\]];, #strong[\[missing \[\]\]]; vaut #strong[NaN];, #strong[\[missing "a"\]]; est un tableau string, et concaténer #strong[missing]; avec une valeur char, logical, entière, cell, struct ou function handle lève une erreur.


== Exemple

``````matlab

A = missing()
A = double([1, 2, missing()])
B = string(["foo", missing()])
C = struct("Name", "Alice", "Age", missing())
S = strings(1, 3);
S(2:3) = missing
X = [1 2 3];
X(:) = missing
M = [missing missing]

``````


== Voir aussi

#nlink(<data_analysis:ismissing>)[ismissing];, #nlink(<types:missing>)[missing];, #nlink(<constructors_functions:NaN>)[NaN];, #nlink(<string:1_create_convert_text.string>)[string];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
