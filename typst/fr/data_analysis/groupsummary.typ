#import "nelson_help.typ": *

= groupsummary <data_analysis:groupsummary>

Calcule des resumes groupes de table.

== Syntaxe

- #raw("G = groupsummary(T, groupVars)");
- #raw("G = groupsummary(T, groupVars, method, dataVars)");

== Argument d'entrée

/ T: Table d'entree.
/ groupVars: Variables de groupement.
/ method: Methode de resume comme sum, mean, min, max ou count.
/ dataVars: Variables a resumer.

== Argument de sortie

/ G: Table de resume groupe.

== Description

#strong[groupsummary]; groupe les lignes de table et calcule des resumes sur les variables selectionnees.


== Exemple

``````matlab
T = table({'a'; 'a'; 'b'}, [1; 2; 4], 'VariableNames', {'G', 'X'});
G = groupsummary(T, 'G', 'sum', 'X')
``````


== Voir aussi

#nlink(<data_analysis:groupcounts>)[groupcounts];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
