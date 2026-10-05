#import "nelson_help.typ": *

= dlgetnelsonlibraries <dynamic_link:dlgetnelsonlibraries>

Renvoie les chemins vers les bibliothèques Nelson

== Syntaxe

- #raw("C = dlgetnelsonlibraries()");

== Argument de sortie

/ C: un tableau de cellules contenant les chemins des répertoires de bibliothèques utilisés par les modules Nelson

== Description

#strong[C \= dlgetnelsonlibraries()]; renvoie un tableau de cellules contenant les chemins des répertoires de bibliothèques utilisés par les modules Nelson.

 Ces chemins sont utilisés en interne pour le développement des modules et les processus de compilation.


== Exemple

See module skeleton for example

``````matlab
dlgetnelsonlibraries()
``````


== Voir aussi

#nlink(<dynamic_link:dlgetnelsonincludes>)[dlgetnelsonincludes];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
