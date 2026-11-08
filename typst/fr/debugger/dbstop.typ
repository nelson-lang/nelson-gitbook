#import "nelson_help.typ": *

= dbstop <debugger:dbstop>

Définir des points d'arrêt pour le débogage.

== Syntaxe

- #raw("dbstop in file");
- #raw("dbstop in file at location");
- #raw("dbstop in file if expression");
- #raw("dbstop in file at location if expression");
- #raw("dbstop if error");
- #raw("dbstop if caught error");
- #raw("dbstop(b)");

== Argument d'entrée

/ file: nom du fichier où le point d'arrêt est défini, spécifié en tant que vecteur de caractères ou chaîne de caractères. Le fichier doit être accessible dans le chemin de recherche ou dans le dossier courant. Un marqueur de fichier (\>) peut être utilisé pour spécifier une fonction locale. Il ne peut pas être combiné avec #strong[at location];.
/ location: emplacement du point d'arrêt dans le fichier : un numéro de ligne ou le nom d'une fonction locale (sa première ligne exécutable est utilisée). Un point d'arrêt demandé sur un commentaire, une ligne vide ou une déclaration de fonction est déplacé vers la ligne exécutable suivante. La ligne #strong[end]; d'une boucle for ou while est un emplacement à part entière : l'exécution s'y arrête à chaque itération.
/ expression: condition évaluée dans l'espace de travail de la fonction arrêtée chaque fois que la ligne est atteinte. L'exécution ne s'arrête que si l'expression vaut un scalaire logique ou numérique vrai. Une valeur non scalaire ou une expression qui échoue émet un avertissement et arrête quand même l'exécution. Une erreur de syntaxe est refusée à la pose du point d'arrêt. Reposer un point d'arrêt sur la même ligne remplace sa condition.
/ b: tableau de structures précédemment renvoyé par #strong[dbstatus];, contenant les points d'arrêt sauvegardés à restaurer. Les sept champs #strong[name];, #strong[file];, #strong[line];, #strong[anonymous];, #strong[expression];, #strong[cond]; et #strong[identifier]; sont obligatoires ; les conditions et les points d'arrêt sur erreur sont aussi restaurés.

== Description

#strong[dbstop]; définit des points d'arrêt dans les programmes pour le débogage interactif. Lorsque l'exécution atteint un point d'arrêt, elle est suspendue, la ligne sur le point d'être exécutée est affichée et l'interpréteur entre en mode débogage (invite #strong[K\>\>];).

 #strong[dbstop if error]; suspend l'exécution sur la ligne qui lève une erreur d'exécution non attrapée par un bloc #strong[try];\/#strong[catch];. L'erreur est affichée, les variables de la fonction arrêtée peuvent être inspectées, et #strong[dbcont];, #strong[dbstep]; ou #strong[dbquit]; terminent l'exécution.

 #strong[dbstop if caught error]; suspend l'exécution sur une erreur levée dans la partie #strong[try]; d'un bloc #strong[try];\/#strong[catch]; ; #strong[dbcont]; reprend dans le bloc #strong[catch];. Les conditions #strong[warning]; et #strong[naninf]; ne sont pas prises en charge.

 Les points d'arrêt sont conservés jusqu'à ce que #strong[dbclear]; les supprime ou que la session se termine. Cette fonction ne peut être appelée que depuis la ligne de commande.

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
dbstop in myfile at myfunc

``````

S'arrêter seulement quand une condition est vraie.

``````matlab

dbstop in buggy at 3 if n > 2
dbstatus

``````

S'arrêter sur la ligne qui lève une erreur non attrapée.

``````matlab

dbstop if error
buggy(1:5)
dbquit
dbclear if error

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
  [2.0.0], [points d'arrêt conditionnels, dbstop if error, dbstop if caught error, fonction locale comme emplacement, structure dbstatus à sept champs],
)

// Auteur: Allan CORNET
