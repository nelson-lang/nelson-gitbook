#import "nelson_help.typ": *

= dbstep <debugger:dbstep>

Exécuter la ligne exécutable suivante lors du débogage.

== Syntaxe

- #raw("dbstep");
- #raw("dbstep in");
- #raw("dbstep out");
- #raw("dbstep nlines");

== Argument d'entrée

/ nlines: Entier positif spécifiant le nombre de lignes exécutables à exécuter. L'exécution s'interrompt aux points d'arrêt rencontrés en cours de route.

== Description

#strong[dbstep]; exécute la ligne exécutable suivante du fichier courant lors du débogage, en sautant les points d'arrêt dans les fonctions appelées par cette ligne. L'exécution s'interrompt

 #strong[dbstep in]; entre dans toute fonction appelée sur la ligne courante, s'interrompant à la première ligne exécutable de la fonction appelée.

 #strong[dbstep out]; termine l'exécution de la fonction courante et s'interrompt juste après le retour à l'appelant. L'exécution s'interrompt aux points d'arrêt rencontrés en cours de route.

 #strong[dbstep nlines]; exécute le nombre spécifié de lignes, s'interrompant à tout point d'arrêt rencontré.


== Exemples

Passer par-dessus une fonction appelée.

``````matlab

function n = myfile(x)
  n = myfunction(x-1);
end
function z = myfunction(y)
  z = 2/y;
end
dbstop in myfile
myfile(2);
dbstep

``````

Entrer dans une fonction appelée.

``````matlab

dbstop in myfile
myfile(2);
dbstep in

``````

Sortir de la fonction courante.

``````matlab

dbstep out

``````

Exécuter plusieurs lignes en une seule commande.

``````matlab

dbstep 4

``````


== Voir aussi

#nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstack>)[dbstack];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
