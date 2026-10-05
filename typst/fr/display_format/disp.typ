#import "nelson_help.typ": *

= disp <display_format:disp>

Afficher une variable.

== Syntaxe

- #raw("disp(V)");

== Argument d'entrée

/ V: une variable

== Description

#strong[disp(V)]; affiche la valeur de la variable #strong[V];.

 #strong[disp]; utilise le réglage courant de #strong[format]; pour afficher les valeurs numériques.


== Exemples

``````matlab
disp('Hello Nelson')
``````

``````matlab
disp(pi)
``````

``````matlab
disp(eye(3, 3))
``````

disp always ends with a newline.

``````matlab
disp('')
``````


== Voir aussi

#nlink(<display_format:display>)[display];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<display_format:format>)[format];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
