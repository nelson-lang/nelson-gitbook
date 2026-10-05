#import "nelson_help.typ": *

= dbstop <debugger:dbstop>

Définir des points d'arrêt pour le débogage.

== Syntaxe

- #raw("dbstop in file");
- #raw("dbstop in file at location");
- #raw("dbstop(b)");

== Argument d'entrée

/ file: nom du fichier où le point d'arrêt est défini, spécifié en tant que vecteur de caractères ou chaîne de caractères. Le fichier doit être accessible dans le chemin de recherche ou dans le dossier courant. Un marqueur de fichier (\>) peut être utilisé pour spécifier une fonction locale.
/ location: emplacement du point d'arrêt dans le fichier. un numéro de ligne.
/ b: tableau de structures précédemment renvoyé par #strong[dbstatus];, contenant les points d'arrêt sauvegardés à restaurer.

== Description

#strong[dbstop]; définit des points d'arrêt dans les programmes pour le débogage interactif. Lorsque l'exécution atteint un point d'arrêt, l'exécution est suspendue et l'interpréteur entre en mode débogage.

 Les points d'arrêt peuvent être définis dans des fichiers spécifiques ou à des emplacements spécifiques.

 Cette fonction ne peut être appelée que depuis la ligne de commande.

 Les fonctionnalités de débogage prises en charge par l'éditeur de texte s'intègrent à ces fonctions pour le débogage interactif.

 Voir également le #nlink(<text_editor:debugging_workflow>)[Flux de travail de débogage]; pour un aperçu du débogage dans Nelson.


== Exemples

Suspendre l'exécution à la première ligne exécutable d'une fonction.

``````matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(1:5)

``````

Définir un point d'arrêt à une fonction locale.

``````matlab

dbstop in myfile>myfunc

``````

Restaurer les points d'arrêt précédemment sauvegardés.

``````matlab

b = dbstatus();
dbclear all
dbstop(b)

``````


== Voir aussi

#nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstack>)[dbstack];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
