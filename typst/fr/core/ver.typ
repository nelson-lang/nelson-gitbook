#import "nelson_help.typ": *

= ver <core:ver>

Informations de version.

== Syntaxe

- #raw("ver");
- #raw("ver(name)");
- #raw("v = ver()");
- #raw("v = ver(name)");

== Argument d'entrée

/ name: une chaîne ou un tableau de caractères : nom du produit.

== Argument de sortie

/ v: un tableau de structures avec les champs #strong[Name];, #strong[Version];, #strong[Release]; et #strong[Date];.

== Description

#strong[ver]; affiche les informations de version.

 #strong[v \= ver()]; renvoie les informations de version dans un tableau de structures avec les champs #strong[Name];, #strong[Version];, #strong[Release]; et #strong[Date];.

 #strong[ver(name)]; limite les informations au produit #strong[name]; (un résultat vide est renvoyé s'il n'est pas installé).


== Exemple

``````matlab
ver
v = ver('Nelson')
``````


== Voir aussi

#nlink(<core:version>)[version];, #nlink(<core:verLessThan>)[verLessThan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
