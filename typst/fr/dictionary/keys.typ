#import "nelson_help.typ": *

= keys <dictionary:keys>

Clés du dictionnaire.

== Syntaxe

- #raw("k = keys(d)");
- #raw("k = keys(d, 'cell')");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.

== Argument de sortie

/ k: clés.

== Description

#strong[k \= keys(d)]; récupère un tableau contenant les clés du dictionnaire spécifié,#strong[d];.

 #strong[k \= keys(d, 'cell')]; renvoie éventuellement les clés sous forme de tableau cellulaire.


== Exemple

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
k = keys(d)
k = keys(d, 'cell')

``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:values>)[values];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
