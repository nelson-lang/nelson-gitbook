#import "nelson_help.typ": *

= isKey <dictionary:isKey>

Vérifie si le dictionnaire contient la clé

== Syntaxe

- #raw("tf = isKey(d)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.

== Argument de sortie

/ tf: scalaire logique : true si la clé existe, false sinon.

== Description

#strong[tf \= isKey(d, key)]; renvoie true logique si la clé spécifiée existe dans le dictionnaire configuré, et false logique si elle n'existe pas.

 Si #strong[d]; est un dictionnaire non configuré, #strong[isKey]; lève une erreur.

 Si #strong[key]; est un tableau de plusieurs clés, alors tf est un tableau logique de la même taille.


== Exemple

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isKey(d, "John")
tf = isKey(d, ["biil" , "Yannis")
``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:configureDictionary>)[configureDictionary];, #nlink(<dictionary:keys>)[keys];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
