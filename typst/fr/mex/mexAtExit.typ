#import "nelson_help.typ": *

= mexAtExit <mex:mexAtExit>

Enregistre une fonction à appeler lorsque le fichier MEX est libéré ou lorsque Nelson se termine

== Syntaxe

- #raw("#include \"mex.h\"");
- #raw("int mexAtExit(void (*ExitFcn)(void));");

== Argument d'entrée

/ ExitFcn: Pointeur vers la fonction que vous souhaitez exécuter à la sortie.

== Argument de sortie

/ valeur retournée: renvoie 0.

== Description

Chaque MEX ne peut enregistrer qu'une seule sous-routine de sortie active à la fois.

 #strong[mexAtExit]; enregistre une sous-routine qui sera appelée juste avant la fin de Nelson ou lorsque la commande #strong[clear]; est exécutée.


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_mexAtExit.m'])
``````


== Voir aussi

#nlink(<core:exit>)[exit];, #nlink(<memory_manager:clear>)[clear];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
