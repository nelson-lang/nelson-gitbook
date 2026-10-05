#import "nelson_help.typ": *

= mfilename <core:mfilename>

Nom du fichier en cours d'execution.

== Syntaxe

- #raw("name = mfilename()");
- #raw("name = mfilename('fullpath')");
- #raw("name = mfilename('fullpathext')");

== Argument d'entrée

/ option: chaine optionnelle : 'fullpath' renvoie le chemin sans extension et 'fullpathext' inclut l'extension.

== Argument de sortie

/ name: chaine contenant le nom du script ou de la fonction courante. Le resultat est vide lorsqu'aucun fichier n'est en cours d'execution.

== Description

mfilename renvoie le nom de la fonction ou du script en cours d'execution.

 Avec une option, la fonction peut renvoyer une forme qualifiee par le chemin prise en charge par Nelson.


== Fonction(s) utilisée(s)

nfilename

== Exemple

Interroger le nom du fichier courant. Dans la fenetre de commande, le resultat est vide.

``````matlab
name = mfilename()
nameWithPath = mfilename('fullpath')
``````


== Voir aussi

#nlink(<core:nfilename>)[nfilename];, #nlink(<core:run>)[run];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
