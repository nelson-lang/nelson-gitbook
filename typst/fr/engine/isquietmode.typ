#import "nelson_help.typ": *

= isquietmode <engine:isquietmode>

Renvoie vrai si Nelson a été démarré avec l'option --quiet.

== Syntaxe

- #raw("res = isquietmode()");

== Argument de sortie

/ res: un booléen true ou false

== Description

#strong[isquietmode]; renvoie true si Nelson a été démarré avec l'option --quiet et false sinon.


== Exemple

``````matlab
disp(isquietmode());
``````


== Voir aussi

#nlink(<engine:executable>)[executable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
