#import "nelson_help.typ": *

= unix <os_functions:unix>

Executer des commandes avec l'interpreteur du systeme d'exploitation.

== Syntaxe

- #raw("status = unix(command)");
- #raw("[status, output, duration] = unix(command)");
- #raw("[status, outputs, duration] = unix(commands)");

== Argument d'entrée

/ command: chaine scalaire ou vecteur de caracteres : commande a executer dans l'interpreteur du systeme d'exploitation.
/ commands: tableau de chaines ou cellule de vecteurs de caracteres executes comme plusieurs commandes.
/ timeouts: scalaire ou vecteur de durees maximales en secondes.

== Argument de sortie

/ status: code de sortie entier renvoye par la commande.
/ output: texte capture depuis la sortie de la commande.
/ duration: duree d'execution en millisecondes.

== Description

unix execute une commande ou une collection de commandes via l'interpreteur du systeme d'exploitation et renvoie les codes de sortie.

 Avec des sorties, Nelson peut aussi renvoyer les textes produits et les durees d'execution. unix suit le meme modele d'execution que system.


== Fonction(s) utilisée(s)

system

== Exemple

Executer une commande shell et capturer sa sortie.

``````matlab
[status, output] = unix('echo Nelson')
``````


== Voir aussi

#nlink(<os_functions:system>)[system];, #nlink(<os_functions:dos>)[dos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
