#import "../nelson_help.typ": *

= cell2table <table:1_create_convert_tables.cell2table>

Convertir un tableau de cellules en table.

== Syntaxe

- #raw("T = cell2table(C)");
- #raw("T = cell2table(C, Name, Value)");

== Argument d'entrée

/ C: Tableau de cellules 2-D.
/ Name, Value: Arguments nom-valeur, dans un ordre quelconque : 'VariableNames' (tableau de chaines ou tableau de cellules de vecteurs de caracteres, un nom par colonne de C), 'RowNames' (tableau de chaines ou tableau de cellules de noms non vides, un nom par ligne de C), 'DimensionNames' (deux noms). Les noms sont insensibles a la casse.

== Argument de sortie

/ T: Objet Table.

== Description

#strong[T \= cell2table(C)]; convertit le contenu d'un tableau de cellules m-by-n #strong[C]; en une table m-by-n.

 Chaque colonne du tableau de cellules d'entrée devient les données d'une variable correspondante dans la table de sortie.

 Pour générer des noms de variables dans la table de sortie, #strong[cell2table]; ajoute les numéros de colonne au nom du tableau d'entrée.

 Si le tableau d'entrée n'a pas de nom,#strong[cell2table]; attribue des noms de variables par défaut au format#strong["Var1", "Var2", ... , "VarN"];, où#strong[N]; est le nombre de colonnes dans le tableau de cellules.

 #strong[T \= cell2table(C, Name, Value)]; cree la table avec les arguments nom-valeur #strong[VariableNames];, #strong[RowNames]; et #strong[DimensionNames];. Ces valeurs sont validees comme celles passees a #strong[table]; ; tout autre nom provoque une erreur.


== Exemples

``````matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T = cell2table(C)
``````

Noms de variables et de lignes

``````matlab
C = {'John', 28; 'Alice', 35};
T = cell2table(C, 'VariableNames', {'Name', 'Age'}, 'RowNames', {'r1', 'r2'})
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table2cell>)[table2cell];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
