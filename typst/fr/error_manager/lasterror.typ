#import "nelson_help.typ": *

= lasterror <error_manager:lasterror>

Renvoie le dernier message d'erreur enregistré.

== Syntaxe

- #raw("last_err = lasterror()");
- #raw("lasterror('reset')");
- #raw("lasterror(error_struct)");

== Argument de sortie

/ last\_err: structure du message d'erreur.

== Description

#strong[l \= lasterror()]; renvoie une structure contenant le dernier message d'erreur et les informations associées.

 #strong[lasterror('reset')]; efface la dernière erreur.

 #strong[lasterror(error\_struct)]; définit la dernière erreur.


== Exemples

``````matlab
state = execstr('xxxxxx', 'errcatch')
if ~state
  l = lasterror()
end
``````

``````matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror();
lasterror('reset');
lasterror()
lasterror(l);
lasterror()
``````


== Voir aussi

#nlink(<error_manager:error>)[error];, #nlink(<error_manager:warning>)[warning];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
