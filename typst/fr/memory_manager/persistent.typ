#import "nelson_help.typ": *

= persistent <memory_manager:persistent>

Variable persistante.

== Syntaxe

- #raw("persistent variable_name");
- #raw("persistent('variable_name')");
- #raw("persistent variable_name1, ..., variable_nameN");

== Argument d'entrée

/ variable\_name: une chaîne : nom de la variable.

== Description

#strong[persistent]; définit une variable identifiée par son nom#strong[variable\_name]; comme persistante dans une fonction.

 Avant d'utiliser une variable persistante, il est nécessaire d'initialiser sa valeur.


== Exemples

function to define:

``````matlab
function r = test_persistent_function()
 persistent calls;
 if isempty(calls)
    calls = 0;
 end
 disp(['nb calls to test_persistent_function: ', int2str(calls)]);
 r= calls;
 calls = calls + 1;
end
``````

calls test\_persistent\_function

``````matlab
for i = 1:30
  r = test_persistent_function();
end

``````


== Voir aussi

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];, #nlink(<memory_manager:global>)[global];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
