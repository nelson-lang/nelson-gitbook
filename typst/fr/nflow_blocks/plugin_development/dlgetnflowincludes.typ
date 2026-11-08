#import "../nelson_help.typ": *

= dlgetnflowincludes <nflow_blocks:plugin_development.dlgetnflowincludes>

Renvoie les répertoires d'includes nécessaires pour compiler un plugin de bloc natif nflow.

== Syntaxe

- #raw("C = dlgetnflowincludes()");

== Argument de sortie

/ C: un tableau de cellules contenant les chemins d'includes : les en-têtes du SDK nflow\_blocks, suivis des répertoires d'includes du SDK Nelson.

== Description

#strong[C \= dlgetnflowincludes()]; renvoie les répertoires d'includes nécessaires pour compiler un plugin de bloc natif nflow.

 Le résultat liste les en-têtes publics de #strong[nflow\_blocks]; (#strong[BlockPlugin.h];, #strong[SimEngineTypes.hpp];, et autres), puis les répertoires d'includes du SDK Nelson. Les répertoires Nelson fournissent #strong[nlohmann\/json.hpp];, inclus par #strong[SimEngineTypes.hpp];.

 Les chemins sont résolus que Nelson soit lancé depuis son arbre des sources ou depuis une installation.

 Cette fonction est généralement passée à #strong[dlgeneratemake];.


== Exemple

``````matlab
dlgetnflowincludes()
``````


== Voir aussi

#nlink(<nflow_blocks:plugin_development.dlgetnflowlibraries>)[dlgetnflowlibraries];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];, #nlink(<dynamic_link:dlmake>)[dlmake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
