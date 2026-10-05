#import "nelson_help.typ": *

= evalc <core:evalc>

Évalue une expression et capture la sortie.

== Syntaxe

- #raw("t = evalc(str)");
- #raw("t = evalc(str)");
- #raw("[t, r1, ... rn] = evalc(str)");

== Argument d'entrée

/ str: chaîne : expression à évaluer

== Argument de sortie

/ T: texte de sortie capturé dans la variable t
/ \[r1, ... rn\]: résultats : variables de sortie

== Description

Évalue une expression et renvoie la sortie standard générée par l'exécution sous forme de chaîne de caractères.


== Exemples

``````matlab
evalc('B=4')
``````

``````matlab

        >t = evalc('dir')
``````


== Voir aussi

#nlink(<core:eval>)[eval];, #nlink(<core:evalin>)[evalin];, #nlink(<core:execstr>)[execstr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
