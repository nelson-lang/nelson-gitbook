#import "../nelson_help.typ": *

= movevars <table:4_sort_filter_rearrange.movevars>

Deplace des variables dans une table.

== Syntaxe

- #raw("TB = movevars(TA, vars, 'Before', location)");
- #raw("TB = movevars(TA, vars, 'After', location)");
- #raw("TB = movevars(TA, vars, 'Before', ref)");
- #raw("TB = movevars(TA, vars, 'After', ref)");

== Argument d'entrée

/ TA: Table d'entree.
/ vars: Variables a deplacer, specifiees par noms, indices ou selecteurs logiques.
/ ref: Variable de reference utilisee avec #strong[Before]; ou #strong[After];.

== Argument de sortie

/ TB: Table avec variables reordonnees.

== Description

#strong[movevars]; reordonne les variables d'une table sans changer leurs donnees. L'emplacement peut etre un nom de variable ou un indice de variable.


== Exemples

Deplacer une variable en premiere position

``````matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'});
T = movevars(T, 'B', 'Before', 1)
``````

Deplacer une variable apres une autre variable

``````matlab
T = table([1; 2], [3; 4], [5; 6], 'VariableNames', {'A', 'B', 'C'});
T = movevars(T, 'A', 'After', 'C')
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.addvars>)[addvars];, #nlink(<table:4_sort_filter_rearrange.renamevars>)[renamevars];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
