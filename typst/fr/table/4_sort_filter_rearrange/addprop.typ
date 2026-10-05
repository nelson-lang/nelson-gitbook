#import "../nelson_help.typ": *

= addprop <table:4_sort_filter_rearrange.addprop>

Ajoute une propriete personnalisee a une table.

== Syntaxe

- #raw("TB = addprop(TA, name, type)");

== Argument d'entrée

/ TA: Table d'entree.
/ name: Nom de la propriete personnalisee.
/ type: Type de propriete personnalisee : #strong['table']; ou #strong['variable'];.

== Argument de sortie

/ TB: Table avec propriete personnalisee ajoutee.

== Description

#strong[addprop]; ajoute une propriete personnalisee dans #strong[T.Properties.CustomProperties];. Le type suit les proprietes personnalisees de table: #strong['table']; ou #strong['variable'];.


== Exemple

Ajouter une propriete personnalisee

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T.Properties.CustomProperties.Source
``````


== Voir aussi

#nlink(<table:4_sort_filter_rearrange.rmprop>)[rmprop];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
