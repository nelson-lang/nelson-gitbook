#import "../nelson_help.typ": *

= rmprop <table:4_sort_filter_rearrange.rmprop>

Supprime une propriete personnalisee d'une table.

== Syntaxe

- #raw("TB = rmprop(TA, name)");

== Argument d'entrée

/ TA: Table d'entree.
/ name: Nom de la propriete personnalisee.

== Argument de sortie

/ TB: Table avec propriete personnalisee supprimee.

== Description

#strong[rmprop]; supprime une propriete personnalisee de #strong[T.Properties.CustomProperties];.


== Exemple

Supprimer une propriete personnalisee

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T = rmprop(T, 'Source')
``````


== Voir aussi

#nlink(<table:4_sort_filter_rearrange.addprop>)[addprop];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
