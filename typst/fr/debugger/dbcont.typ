#import "nelson_help.typ": *

= dbcont <debugger:dbcont>

Reprendre l'exécution après un point d'arrêt.

== Syntaxe

- #raw("dbcont");

== Description

#strong[dbcont]; reprend l'exécution du fichier après une pause à un point d'arrêt. L'exécution continue jusqu'à ce qu'un autre point d'arrêt soit rencontré, qu'une condition de pause soit remplie, qu'une erreur se produise ou que l'exécution se termine avec succès.

 Utilisez #strong[dbcont]; pour continuer l'exécution après avoir examiné les variables de l'espace de travail ou débogué le code.

 Remarque : Si vous souhaitez modifier un fichier pendant le débogage, il est recommandé de quitter d'abord le mode débogage en utilisant #strong[dbquit]; pour éviter un comportement inattendu.


== Exemple

Reprendre l'exécution après un point d'arrêt dans une fonction.

``````matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy at 2
buggy(5)
dbcont

``````


== Voir aussi

#nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbstep>)[dbstep];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
