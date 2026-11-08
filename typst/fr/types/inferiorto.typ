#import "nelson_help.typ": *

= inferiorto <types:inferiorto>

Déclare une précédence de classe inférieure.

== Syntaxe

- #raw("inferiorto(class1, ...)");

== Argument d'entrée

/ class1, ...: noms de classes, sous forme de vecteurs de caractères.

== Description

#strong[inferiorto(class1, ...)]; déclare que la classe en cours de définition a une précédence inférieure aux classes nommées lors de la résolution des opérateurs surchargés.

 Elle est appelée depuis un constructeur de classe.


== Exemple

``````matlab
inferiorto('double')
``````


== Voir aussi

#nlink(<types:superiorto>)[superiorto];, #nlink(<types:class>)[class];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
