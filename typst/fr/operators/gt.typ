#import "nelson_help.typ": *

= gt <operators:gt>

supérieur à, opérateur \>

== Syntaxe

- #raw("C = gt(A, B)");
- #raw("C = (A > B)");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A \> B

== Description

#strong[C \= gt(A, B)]; returns a logical array with elements set to logical#strong[true]; A is greater than B.

 #strong[gt]; compare uniquement la partie réelle des tableaux numériques.

 Lorsque les entrees sont des tableaux sparse numeriques ou logiques, le resultat est un tableau sparse logique. Les operandes sparse single et single-complex sont pris en charge.

 Pour les tableaux sparse complexes, les comparaisons d'ordre utilisent le module de chaque valeur.


== Exemples

``````matlab
eye(2,2) > ones(2, 2)
``````

``````matlab
0 > i
``````

``````matlab
'Nelson' > 'Noslen'
``````

``````matlab
'Nelson' > 'l'
``````

``````matlab
gt(0.8 - 0.6 - 0.2, 0)
``````

``````matlab
S = sparse(single([1 + 2i 0; 0 3 - 4i]));
T = sparse(single([2 + 0.1i 0; 0 1 + 0.1i]));
R = S > T
``````


== Voir aussi

#nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:le>)[le];, #nlink(<operators:ge>)[ge];, #nlink(<operators:eq>)[eq];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [operandes sparse single et single-complex pris en charge.],
)

// Auteur: Allan CORNET
