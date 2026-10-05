#import "nelson_help.typ": *

= le <operators:le>

inférieur ou égal, opérateur \<\=

== Syntaxe

- #raw("C = le(A, B)");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de le(A, B)

== Description

#strong[C \= le(A, B)]; renvoie un tableau logique avec des éléments égaux à#strong[true]; lorsque A est inférieur ou égal à B.

 #strong[le]; compare uniquement la partie réelle des tableaux numériques.

 Lorsque les entrees sont des tableaux sparse numeriques ou logiques, le resultat est un tableau sparse logique. Les operandes sparse single et single-complex sont pris en charge.

 Pour les tableaux sparse complexes, les comparaisons d'ordre utilisent le module de chaque valeur.


== Exemples

``````matlab
eye(2,2) &#60;= ones(2, 2)
``````

``````matlab
0 &#60;= i
``````

``````matlab
'Nelson' &#60;= 'Noslen'
``````

``````matlab
'Nelson' &#60;= 'l'
``````

``````matlab
le(0.8 - 0.6 - 0.2, 0)
``````


== Voir aussi

#nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:ge>)[ge];, #nlink(<operators:gt>)[gt];, #nlink(<operators:eq>)[eq];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [operandes sparse single et single-complex pris en charge.],
)

// Auteur: Allan CORNET
