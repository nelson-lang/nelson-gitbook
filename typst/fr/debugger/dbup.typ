#import "nelson_help.typ": *

= dbup <debugger:dbup>

Monter dans la pile d'appels en mode débogage.

== Syntaxe

- #raw("dbup");
- #raw("dbup n");

== Argument d'entrée

/ n: entier positif scalaire spécifiant le nombre de niveaux à monter dans la pile d'appels.

== Description

#strong[dbup]; change le contexte de l'espace de travail et de la fonction courante pour celui de la fonction ou du script appelant en mode débogage. Cela permet d'inspecter l'espace de travail de l'appelant pour comprendre comment les arguments d'entrée ont été produits.

 Chaque appel à #strong[dbup]; monte d'un niveau dans la pile d'appels, s'arrêtant à l'espace de travail de base. L'exécution peut continuer sans revenir à la ligne en pause de l'espace de travail.

 #strong[dbup n]; est équivalent à exécuter #strong[dbup]; #emph[n]; fois.

 Cette fonction ne peut être appelée que depuis la ligne de commande en mode débogage.


== Exemples

Voir l'espace de travail d'une fonction appelante lors du débogage.

``````matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
dbup
whos

``````

Monter plusieurs niveaux dans la pile d'appels en une seule étape.

``````matlab

dbup 2

``````


== Voir aussi

#nlink(<debugger:dbdown>)[dbdown];, #nlink(<debugger:dbstack>)[dbstack];, #nlink(<memory_manager:whos>)[whos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
