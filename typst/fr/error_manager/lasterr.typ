#import "nelson_help.typ": *

= lasterr <error_manager:lasterr>

Retourne ou definit le dernier message d'erreur.

== Syntaxe

- #raw("msg = lasterr()");
- #raw("[msg, id] = lasterr()");
- #raw("previous = lasterr(msg)");
- #raw("previous = lasterr(msg, id)");

== Argument d'entrée

/ msg: message d'erreur : chaine de caracteres.
/ id: identifiant d'erreur : chaine de caracteres.

== Argument de sortie

/ msg: dernier message d'erreur : chaine de caracteres.
/ id: dernier identifiant d'erreur : chaine de caracteres.

== Description

#strong[msg \= lasterr()]; retourne le message de la derniere erreur enregistree.

 #strong[\[msg, id\] \= lasterr()]; retourne aussi l'identifiant de l'erreur.

 #strong[lasterr(msg)]; et #strong[lasterr(msg, id)]; definissent le dernier message d'erreur (et l'identifiant), et retournent le message precedent.


== Exemple

``````matlab
try
  error('MyPkg:boom', 'exploded');
catch
end
[msg, id] = lasterr()
``````


== Voir aussi

#nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:error>)[error];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
