#import "nelson_help.typ": *

= display <display_format:display>

Afficher des informations sur une variable ou le résultat d'une expression.

== Syntaxe

- #raw("display(V)");
- #raw("display(V, name)");

== Argument d'entrée

/ V: Résultat de l'exécution d'une instruction ou d'une expression
/ name: un vecteur de caractères : nom de la variable affichée.

== Description

#strong[display(V)]; affiche des informations sur la variable #strong[V];.

 Nelson appelle la fonction#strong[display]; chaque fois qu'un objet est référencé dans une instruction non terminée par un point-virgule.


== Exemples

``````matlab
display(33, 'Hello')
``````

``````matlab
display('Hello Nelson')
``````

``````matlab
display(pi)
``````

``````matlab
A = eye(3, 3); disp(A)
``````


== Voir aussi

#nlink(<display_format:disp>)[disp];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<display_format:format>)[format];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
