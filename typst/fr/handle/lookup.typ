#import "nelson_help.typ": *

= lookup <handle:lookup>

Rechercher des valeurs dans un objet.

== Syntaxe

- #raw("value = lookup(obj, ...)");
- #raw("[value, found] = lookup(obj, ...)");

== Argument d'entrée

/ obj: objet qui implemente la recherche de valeur par cle.
/ key: cle a rechercher.

== Argument de sortie

/ value: valeur associee a la cle.
/ found: valeur logique indiquant si la recherche a reussi, lorsque l'implementation de l'objet la renvoie.

== Description

lookup delegue la recherche de valeur au type de l'objet passe en premier argument.

 Si le premier argument n'implemente pas la recherche, Nelson signale que la fonction n'est pas implementee pour ce type.


== Fonction(s) utilisée(s)

dictionary

== Exemple

Rechercher une valeur dans un dictionnaire via la fonction generique.

``````matlab
d = dictionary(["one" "two"], [1 2]);
value = lookup(d, "two")
``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<handle:isKey>)[isKey];, #nlink(<handle:insert>)[insert];, #nlink(<handle:remove>)[remove];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
