#import "nelson_help.typ": *

= values <dictionary:values>

Valeurs du dictionnaire.

== Syntaxe

- #raw("v = values(d)");
- #raw("v = values(d, 'cell')");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.

== Argument de sortie

/ v: valeurs.

== Description

#strong[v \= values(d)]; récupère un tableau contenant les valeurs du dictionnaire spécifié,#strong[d];.

 #strong[v \= values(d, 'cell')]; renvoie éventuellement les valeurs sous forme de tableau cellulaire.


== Exemple

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = values(d)
v = values(d, 'cell')

``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:keys>)[keys];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
