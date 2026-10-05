#import "nelson_help.typ": *

= try <interpreter:try>

instruction try\/catch.

== Syntaxe

- #raw("try, statements_1, catch, statements_2, end");
- #raw("try, statements_1, catch exception, statements_2, end");

== Description

Les instructions #strong[try]; et#strong[catch]; sont utilisées pour la gestion des erreurs et le contrôle dans les fichiers.

 #strong[exception]; est un objet#strong[MException]; qui permet d'identifier l'erreur.

 Le bloc catch assigne l'objet exception courant à la variable dans exception.


== Exemples

try\/catch dans un script

``````matlab
try
error('an error')
catch
  disp('error catched')
end
``````

try\/catch dans un script

``````matlab
try
error('an error')
catch ME
  ME
end
``````


== Voir aussi

#nlink(<core:run>)[run];, #nlink(<core:execstr>)[execstr];, #nlink(<error_manager:MException>)[MException];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
