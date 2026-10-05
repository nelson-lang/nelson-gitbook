#import "nelson_help.typ": *

= entries <dictionary:entries>

Paires clé-valeur du dictionnaire.

== Syntaxe

- #raw("E = entries(d)");
- #raw("E = entries(d, format)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.
/ format: format : scalaire string ou vecteur de caractères : 'table' (par défaut), 'struct' ou 'cell'.

== Argument de sortie

/ E: table, struct ou cell.

== Description

#strong[E \= entries(d)]; récupère une table contenant les paires clé-valeur du dictionnaire donné,#strong[d];.

 #strong[E \= entries(d)]; est équivalent à #strong[E \= entries(d, 'table')]; : le format de sortie par défaut est une table.

 #strong[E \= entries(d, format)]; spécifie le format de sortie comme une table, une structure ou un cell. Par exemple, entries(d, "struct") renvoie une structure contenant les paires clé-valeur de d. Cette option est utile pour les types de données non compatibles avec les tables.


== Exemple

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
E = entries(d, 'struct')
E = entries(d, 'cell')

``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:lookup>)[lookup];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
