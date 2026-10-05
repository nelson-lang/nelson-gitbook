#import "nelson_help.typ": *

= dlgetnelsonincludes <dynamic_link:dlgetnelsonincludes>

Renvoie les chemins des répertoires d'includes de Nelson

== Syntaxe

- #raw("C = dlgetnelsonincludes()");

== Argument de sortie

/ C: un tableau de cellules contenant les chemins des répertoires d'includes utilisés par les modules Nelson

== Description

#strong[C \= dlgetnelsonincludes()]; renvoie un tableau de cellules contenant les chemins des répertoires d'includes utilisés par les modules Nelson.

 Ces chemins sont utilisés en interne pour le développement des modules et les processus de compilation.


== Exemple

See module skeleton for example

``````matlab
dlgetnelsonincludes()
``````


== Voir aussi

#nlink(<dynamic_link:dlgetnelsonlibraries>)[dlgetnelsonlibraries];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
