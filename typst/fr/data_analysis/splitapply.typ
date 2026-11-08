#import "nelson_help.typ": *

= splitapply <data_analysis:splitapply>

Découpe les données en groupes et applique une fonction.

== Syntaxe

- #raw("Y = splitapply(func, A, G)");
- #raw("Y = splitapply(func, A1, ..., An, G)");
- #raw("[Y1, ..., Ym] = splitapply(func, ..., G)");

== Argument d'entrée

/ func: un handle de fonction appliqué à chaque groupe.
/ A, A1, ..., An: les données à découper par groupe (lignes).
/ G: numéros de groupe, généralement issus de #strong[findgroups];.

== Argument de sortie

/ Y: les résultats, avec une ligne par groupe.

== Description

#strong[Y \= splitapply(func, A, G)]; découpe #strong[A]; en groupes selon #strong[G]; et applique #strong[func]; à chaque groupe, puis concatène les résultats.


== Exemple

``````matlab
G = findgroups([1; 2; 1; 2; 1]);
Y = splitapply(@sum, [10; 20; 30; 40; 50], G)
``````


== Voir aussi

#nlink(<data_analysis:findgroups>)[findgroups];, #nlink(<data_analysis:accumarray>)[accumarray];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
