#import "../nelson_help.typ": *

= struct2table <table:1_create_convert_tables.struct2table>

Convertir un tableau de structures en format tabulaire.

== Syntaxe

- #raw("T = struct2table(S)");

== Argument d'entrée

/ S: structure : tableau fourni sous forme de structure.

== Argument de sortie

/ T: Un objet table.

== Description

#strong[T \= struct2table(S)]; transforme un tableau de structures en une table, où chaque champ de la structure d'entrée est représenté comme une variable dans la table résultante.

 Si l'entrée est une structure scalaire contenant 𝑛 champs, chacun avec 𝑚 lignes, la sortie sera une table 𝑚×𝑛.

 Si l'entrée est un tableau de structures 𝑚×1 ou 1×𝑚 avec 𝑛 champs, la sortie sera également une table 𝑚×𝑛.


== Exemples

``````matlab
% Define a structure array
S(1).Name = 'Alice';
S(1).Age = 30;
S(1).Height = 5.5;

S(2).Name = 'Bob';
S(2).Age = 25;
S(2).Height = 6.0;

% Convert the structure array to a table
T = struct2table(S)

``````

``````matlab
S = struct();
S(1).a = [10 20];
S(2).a = [30 40];
S(1).b = 50;
S(2).b = 60;
T = struct2table(S)
``````

``````matlab
S = struct();
S.a = [1;2;3]
S.b = [4 5;6 7;8 9]
T = struct2table(S)
``````

``````matlab
S = struct();
S(1).a = [10 20];
S(2).a = [30 40 50];
S(1).b = 70;
S(2).b = 80;
T = struct2table(S)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table2struct>)[table2struct];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
