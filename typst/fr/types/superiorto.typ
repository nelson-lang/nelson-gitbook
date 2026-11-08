#import "nelson_help.typ": *

= superiorto <types:superiorto>

Déclare une précédence de classe supérieure.

== Syntaxe

- #raw("superiorto(class1, ...)");

== Argument d'entrée

/ class1, ...: noms de classes, sous forme de vecteurs de caractères.

== Description

#strong[superiorto(class1, ...)]; déclare que la classe en cours de définition a une précédence supérieure aux classes nommées lors de la résolution des opérateurs surchargés.

 Elle est appelée depuis un constructeur de classe.


== Exemple

``````matlab
superiorto('double')
``````


== Voir aussi

#nlink(<types:inferiorto>)[inferiorto];, #nlink(<types:class>)[class];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
