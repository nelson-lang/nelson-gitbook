#import "nelson_help.typ": *

= getLastReport <error_manager:getLastReport>

Renvoie le dernier message d'erreur formaté enregistré.

== Syntaxe

- #raw("messageText = getLastReport()");

== Argument de sortie

/ messageText: un vecteur de caractères : message d'erreur formaté.

== Description

#strong[getLastReport]; renvoie le dernier message d'erreur formaté.


== Exemples

``````matlab
lasterror('reset')
getLastReport()
``````

``````matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror()
getLastReport

``````


== Voir aussi

#nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:error>)[error];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
