#import "nelson_help.typ": *

= isKey <handle:isKey>

Determiner si un objet contient une cle.

== Syntaxe

- #raw("tf = isKey(obj, key)");

== Argument d'entrée

/ obj: objet qui implemente la recherche par cle.
/ key: cle a rechercher.

== Argument de sortie

/ tf: valeur logique : true lorsque la cle existe.

== Description

isKey delegue la recherche de cle au type de l'objet passe en premier argument.

 Si le premier argument n'implemente pas la recherche par cle, Nelson signale que la fonction n'est pas implementee pour ce type.


== Fonction(s) utilisée(s)

dictionary

== Exemple

Tester si un dictionnaire contient une cle.

``````matlab
d = dictionary(["one" "two"], [1 2]);
tf = isKey(d, "two")
``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<handle:lookup>)[lookup];, #nlink(<handle:insert>)[insert];, #nlink(<handle:remove>)[remove];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
