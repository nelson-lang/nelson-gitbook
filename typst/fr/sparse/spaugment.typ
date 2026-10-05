#import "nelson_help.typ": *

= spaugment <sparse:spaugment>

Construit une matrice sparse augmentee pour les moindres carres.

== Syntaxe

- #raw("S = spaugment(A)");
- #raw("S = spaugment(A, c)");

== Argument d'entrée

/ A: matrice 2-D numerique ou logique non vide, sparse ou pleine.
/ c: facteur d'echelle du residu. Le premier element est utilise. La valeur par defaut est max(max(abs(A))) \/ 1000.

== Argument de sortie

/ S: matrice sparse augmentee.

== Description

#strong[spaugment]; construit la matrice sparse #strong[\[c \* I, A; A', 0\]];.

 Cette matrice est utile pour reecrire des problemes sparse de moindres carres sous forme de systemes symetriques indefinis.

 Les entrees double, single, logiques, double complexes et single complexes sont prises en charge. La sortie est sparse, et les entrees sparse numeriques single conservent la classe single.

 Les valeurs nulles stockees dans #strong[A]; sparse sont ignorees par les operations sparse utilisees pour former la matrice augmentee.


== Exemples

``````matlab
A = sparse([1 0; 2 3; 0 4]);
S = spaugment(A, 2)

``````

``````matlab
A = sparse(single([1 + 2i 0; 0 3]));
S = spaugment(A, single(2))

``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:speye>)[speye];, #nlink(<linear_algebra:6_iterative_solvers.lsqr>)[lsqr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
