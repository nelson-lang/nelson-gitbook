#import "nelson_help.typ": *

= spones <sparse:spones>

Remplace les éléments non nuls d'une matrice sparse par des uns.

== Syntaxe

- #raw("s = spones(S)");

== Argument d'entrée

/ S: matrice sparse ou pleine 2D.

== Argument de sortie

/ s: une matrice sparse avec des uns aux positions non nulles.

== Description

#strong[s \= spones(S)]; retourne une matrice #strong[s]; avec la même structure de sparsité que #strong[S];, mais avec des uns dans les positions non nulles.

 Les entrees sparse double, single, logiques, double complexes et single complexes sont prises en charge. Le resultat est sparse et utilise des valeurs double sauf lorsque l'entree sparse numerique est single ; dans ce cas, le resultat conserve la classe single.

 Les valeurs nulles stockees ne deviennent pas des uns ; seules les entrees dont la valeur est reellement non nulle sont conservees dans le motif de sortie.


== Exemples

``````matlab
S = sparse([1,0;3,4]);
R = spones(S)
``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
R = spones(S)
``````


== Voir aussi

#nlink(<sparse:speye>)[speye];, #nlink(<sparse:sparse>)[sparse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [support sparse single et single complexe etendu],
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
