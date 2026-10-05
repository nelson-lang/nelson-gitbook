#import "../nelson_help.typ": *

= removevars <table:4_sort_filter_rearrange.removevars>

Supprimer des variables d'une table.

== Syntaxe

- #raw("TB = removevars(TA, varsNames)");

== Argument d'entrée

/ TA: Table d'entrée.
/ varsNames: Noms des variables de la table d'entrée à supprimer : vecteur de caractères, tableau de chaînes ou tableau de cellules de vecteurs de caractères.

== Argument de sortie

/ TB: Objet table modifié.

== Description

#strong[TB \= removevars(TA, varsNames)]; supprime les variables spécifiées par #strong[varsNames]; de la table #strong[TA]; et stocke les variables restantes dans #strong[T2];.

 Vous pouvez spécifier les variables par nom, position ou en utilisant des indices logiques.

 Vous pouvez également supprimer des variables d'une table en utilisant#strong[T(:, varsNames) \= \[\]];.


== Exemple

``````matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C)
T2 = removevars(T1, 'C2')

``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.renamevars>)[renamevars];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [version initiale],
)

// Auteur: Allan CORNET
