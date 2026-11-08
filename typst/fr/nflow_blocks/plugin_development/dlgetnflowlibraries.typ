#import "../nelson_help.typ": *

= dlgetnflowlibraries <nflow_blocks:plugin_development.dlgetnflowlibraries>

Renvoie les bibliothèques auxquelles un plugin de bloc natif nflow doit être lié.

== Syntaxe

- #raw("C = dlgetnflowlibraries()");

== Argument de sortie

/ C: un tableau de cellules contenant les chemins des bibliothèques sans extension. dlgeneratemake ajoute le suffixe de la plateforme (.lib sous Windows, .so ou .dylib sinon).

== Description

#strong[C \= dlgetnflowlibraries()]; renvoie les bibliothèques nécessaires pour lier un plugin de bloc natif nflow.

 Un plugin appelle les fonctions d'aide de simulation (#strong[getInput];, #strong[getState];, #strong[setOutput];, #strong[updated];, et autres), qui sont compilées dans #strong[nlsNflow\_blocks];. Lier cette seule bibliothèque suffit ; ses propres dépendances Nelson sont résolues au chargement.

 Cette fonction est généralement passée à #strong[dlgeneratemake];.


== Exemple

``````matlab
dlgetnflowlibraries()
``````


== Voir aussi

#nlink(<nflow_blocks:plugin_development.dlgetnflowincludes>)[dlgetnflowincludes];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];, #nlink(<dynamic_link:dlmake>)[dlmake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
