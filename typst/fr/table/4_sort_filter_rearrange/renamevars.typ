#import "../nelson_help.typ": *

= renamevars <table:4_sort_filter_rearrange.renamevars>

Renommer les variables dans une table.

== Syntaxe

- #raw("TB = renamevars(TA, varsNames, newNames)");

== Argument d'entrée

/ TA: Table d'entrée.
/ varsNames: Noms des variables dans la table d'entrée : vecteur de caractères, tableau de chaînes ou tableau de cellules de vecteurs de caractères.
/ newNames: Nouveaux noms pour les variables : vecteur de caractères, tableau de chaînes ou tableau de cellules de vecteurs de caractères.

== Argument de sortie

/ TB: Objet Table avec les noms de variables modifiés.

== Description

#strong[TB \= renamevars(TA, varsNames, newNames)]; renomme les variables dans la table #strong[TA]; telles que spécifiées par#strong[varsNames]; et leur assigne les nouveaux noms fournis dans#strong[newNames];.

 Vous pouvez également renommer toutes les variables d'une table en assignant de nouveaux noms à sa propriété #strong[VariableNames]; en utilisant #strong[T.Properties.VariableNames \= newNames];.

 Dans ce cas, #strong[newNames]; doit être un tableau de chaînes ou un tableau de cellules de vecteurs de caractères.


== Exemple

``````matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C);
T2 = renamevars(T1, {'C1', 'C2'}, {'Name', 'Age'})
T3 = cell2table(C);
T3.Properties.VariableNames = {'Name', 'Age', 'Married'};
T3
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.removevars>)[removevars];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [version initiale],
)

// Auteur: Allan CORNET
