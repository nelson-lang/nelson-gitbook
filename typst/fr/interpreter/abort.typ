#import "nelson_help.typ": *

= abort <interpreter:abort>

arrêter l'évaluation.

== Syntaxe

- #raw("abort");
- #raw("return");

== Description

#strong[return]; ou #strong[abort]; arrête l'évaluation en cours.


== Exemple

``````matlab
for i=1:10,a = i,abort,end
          
``````


== Voir aussi

#nlink(<interpreter:for>)[for];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
