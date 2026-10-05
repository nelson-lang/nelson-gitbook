#import "nelson_help.typ": *

= lastwarn <error_manager:lastwarn>

Renvoie le dernier message d'avertissement enregistré.

== Syntaxe

- #raw("last_message = lastwarn()");
- #raw("[last_message, last_identifier] = lastwarn()");
- #raw("lastwarn(' ')");
- #raw("lastwarn(new_message)");
- #raw("lastwarn(new_message, new_identifier)");
- #raw("[last_message, last_identifier] = lastwarn(' ')");
- #raw("[last_message, last_identifier] = lastwarn(new_message)");
- #raw("[last_message, last_identifier] = lastwarn(new_message, new_identifier)");

== Argument de sortie

/ last\_message: chaîne : dernier message d'avertissement.
/ last\_identifier: chaîne : identifiant.

== Description

#strong[last\_message \= lastwarn()]; renvoie une chaîne contenant le dernier message d'avertissement.

 #strong[lastwarn(' ')]; efface le dernier avertissement.


== Exemple

``````matlab

    [1:3]:3
    lastwarn
    [msg, id] = lastwarn()
    lastwarn('')
    [msg, id] = lastwarn()
    
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
