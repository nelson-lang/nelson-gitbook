#import "nelson_help.typ": *

= findgroups <data_analysis:findgroups>

Trouve les groupes et renvoie les numéros de groupe.

== Syntaxe

- #raw("G = findgroups(A)");
- #raw("[G, ID] = findgroups(A)");
- #raw("[G, ID1, ..., IDn] = findgroups(A1, ..., An)");

== Argument d'entrée

/ A, A1, ..., An: variables de regroupement ayant le même nombre d'éléments.

== Argument de sortie

/ G: numéros de groupe ; les valeurs manquantes valent #strong[NaN];.
/ ID: les identifiants de groupe, une sortie par variable de regroupement.

== Description

#strong[G \= findgroups(A)]; renvoie un vecteur de numéros de groupe construit à partir de la variable de regroupement #strong[A];.

 Utilisez #strong[G]; avec #strong[splitapply]; pour appliquer une fonction à chaque groupe.


== Exemple

``````matlab
[G, id] = findgroups([10; 20; 10; 30; 20])
``````


== Voir aussi

#nlink(<data_analysis:splitapply>)[splitapply];, #nlink(<data_analysis:accumarray>)[accumarray];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
