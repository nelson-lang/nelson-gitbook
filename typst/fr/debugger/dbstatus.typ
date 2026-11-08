#import "nelson_help.typ": *

= dbstatus <debugger:dbstatus>

Lister tous les points d'arrêt lors du débogage.

== Syntaxe

- #raw("dbstatus");
- #raw("dbstatus file");
- #raw("dbstatus -completenames");
- #raw("dbstatus file -completenames");
- #raw("b = dbstatus(...)");

== Argument d'entrée

/ file: Seuls les points d'arrêt de ce fichier sont listés ; les points d'arrêt sur erreur ne sont pas inclus.
/ -completenames: Affiche le chemin complet du fichier suivi du nom de la fonction au lieu du nom de la fonction seul.

== Argument de sortie

/ b: Tableau de structures listant les points d'arrêt actuellement en vigueur.

== Description

#strong[dbstatus]; liste tous les points d'arrêt actuellement définis, une ligne par fichier : #strong[Breakpoint for buggy is on line 3.]; ou #strong[Breakpoints for buggy are on lines 2, 3.];, suivie de la condition de chaque point d'arrêt conditionnel, puis de #strong[Stop if error.]; et #strong[Stop if caught error.]; quand ces points d'arrêt sur erreur sont définis.

 L'affectation de la sortie à une variable #strong[b]; vous permet de sauvegarder et de restaurer les points d'arrêt ultérieurement en utilisant #strong[dbstop(b)];.

 La structure #strong[b]; contient un élément par fichier ayant des points d'arrêt et un élément par point d'arrêt sur erreur. Chaque élément contient les champs suivants :

- #strong[name]; : nom de la fonction (vide pour un point d'arrêt sur erreur)
- #strong[file]; : chemin complet vers le fichier contenant les points d'arrêt
- #strong[line]; : vecteur ligne des numéros de ligne des points d'arrêt
- #strong[anonymous]; : vecteur ligne de zéros (les points d'arrêt dans les fonctions anonymes ne sont pas pris en charge)
- #strong[expression]; : cellule ligne des conditions, une par ligne, vide sans condition
- #strong[cond]; : #strong['error']; ou #strong['caught error']; pour un point d'arrêt sur erreur, vide sinon
- #strong[identifier]; : #strong[{'all'}]; pour un point d'arrêt sur erreur, vide sinon


== Exemples

Lister tous les points d'arrêt en vigueur.

``````matlab

dbstop in myfile
dbstatus
dbstatus -completenames

``````

Sauvegarder les points d'arrêt actuels et les restaurer ultérieurement.

``````matlab

b = dbstatus();
save saved_breakpoints b
dbclear all
load saved_breakpoints
dbstop(b)

``````


== Voir aussi

#nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstack>)[dbstack];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
  [2.0.0], [filtre par fichier, -completenames, structure à sept champs avec conditions et points d'arrêt sur erreur],
)

// Auteur: Allan CORNET
