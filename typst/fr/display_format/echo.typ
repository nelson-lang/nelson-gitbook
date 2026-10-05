#import "nelson_help.typ": *

= echo <display_format:echo>

Contrôle l'écho lors de l'exécution des scripts.

== Syntaxe

- #raw("state = echo()");
- #raw("echo()");
- #raw("echo('on')");
- #raw("echo('off')");

== Argument d'entrée

/ 'on': activer le mode echo (par défaut)
/ 'off': désactiver le mode echo

== Argument de sortie

/ state: une chaîne : 'on' ou 'off'

== Description

#strong[echo('off')]; désactive le mode echo.

 Sans arguments d'entrée ou de sortie, la commande #strong[echo]; bascule l'état d'echo courant.


== Exemple

an example

``````matlab
R = echo
echo('on')
A = 1+1
echo('off')
A = A+1
echo(R)
A
``````


== Voir aussi

#nlink(<display_format:disp>)[disp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
