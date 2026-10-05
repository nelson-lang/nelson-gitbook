#import "nelson_help.typ": *

= numEntries <dictionary:numEntries>

Nombre de paires clé-valeur dans le dictionnaire.

== Syntaxe

- #raw("n = numEntries(d)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.

== Argument de sortie

/ n: scalaire : nombre d'entrées.

== Description

#strong[n \= numEntries(d)]; récupère le nombre de paires clé-valeur stockées dans le dictionnaire.

 Si d est un dictionnaire non configuré, alors numEntries renvoie 0.


== Exemple

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
n = numEntries(d)

``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:entries>)[entries];, #nlink(<dictionary:keys>)[keys];, #nlink(<dictionary:values>)[values];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
