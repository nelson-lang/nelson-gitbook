#import "nelson_help.typ": *

= dbdown <debugger:dbdown>

Descendre dans la pile d'appels en mode débogage.

== Syntaxe

- #raw("dbdown");
- #raw("dbdown n");

== Argument d'entrée

/ n: entier positif scalaire spécifiant le nombre de niveaux à descendre dans la pile d'appels.

== Description

#strong[dbdown]; change le contexte de l'espace de travail et de la fonction courante pour celui de la fonction ou du script appelé en mode débogage. Cette commande est l'opposée de#strong[dbup]; et ne peut être utilisée qu'après au moins un appel à #strong[dbup];.

 Chaque appel à #strong[dbdown]; descend d'un niveau dans la pile d'appels, s'arrêtant à l'espace de travail et au contexte de fonction où l'exécution est en pause. L'exécution peut continuer sans revenir à la ligne en pause.

 #strong[dbdown n]; est équivalent à exécuter #strong[dbdown]; #emph[n]; fois.

 Cette fonction ne peut être appelée que depuis la ligne de commande en mode débogage.


== Exemples

Se déplacer entre les espaces de travail des fonctions appelantes et appelées lors du débogage.

``````matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
whos
dbup
whos
dbdown
whos

``````

Descendre plusieurs niveaux dans la pile d'appels en une seule étape.

``````matlab

dbdown 2

``````


== Voir aussi

#nlink(<debugger:dbup>)[dbup];, #nlink(<debugger:dbstack>)[dbstack];, #nlink(<memory_manager:whos>)[whos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
