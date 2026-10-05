#import "nelson_help.typ": *

= groupcounts <data_analysis:groupcounts>

Compte les groupes.

== Syntaxe

- #raw("counts = groupcounts(A)");
- #raw("[counts, groups] = groupcounts(A)");
- #raw("G = groupcounts(T, groupVars)");

== Argument d'entrée

/ A: Tableau d'entree.
/ T: Table d'entree.
/ groupVars: Variables de groupement.

== Argument de sortie

/ counts: Nombre d'elements dans chaque groupe.
/ groups: Valeurs de groupe uniques.
/ G: Table contenant les groupes, les comptes et les pourcentages.

== Description

#strong[groupcounts]; compte le nombre d'elements ou de lignes de table dans chaque groupe.


== Exemple

``````matlab
[counts, groups] = groupcounts([1; 1; 2; 3; 3; 3])
T = table({'a'; 'a'; 'b'}, [1; 2; 4], 'VariableNames', {'G', 'X'});
C = groupcounts(T, 'G')
``````


== Voir aussi

#nlink(<data_analysis:groupsummary>)[groupsummary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
