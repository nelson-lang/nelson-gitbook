#import "nelson_help.typ": *

= keyMatch <dictionary:keyMatch>

Vérifie si deux clés de dictionnaire sont identiques.

== Syntaxe

- #raw("tf = keyMatch(A, B)");

== Argument d'entrée

/ A: array
/ B: array

== Argument de sortie

/ tf: logique : true ou false.

== Description

#strong[tf \= keyMatch(A, B)]; renvoie #strong[true]; si les tableaux#strong[A]; et#strong[B]; ont des classes, propriétés, dimensions et valeurs identiques, et renvoie #strong[false]; sinon.

 Pour les classes personnalisées, la surcharge de #strong[keyMatch]; peut être nécessaire pour assurer une équivalence précise.


== Exemple

``````matlab
A = {'a', 'b', 1};
B = {1, 'a', 'b'};
C = A;
D = B;
keyMatch(A, B)
keyMatch(A, C)
keyMatch(B, D)
``````


== Voir aussi

#nlink(<dictionary:keyHash>)[keyHash];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
