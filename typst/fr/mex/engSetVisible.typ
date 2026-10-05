#import "nelson_help.typ": *

= engSetVisible <mex:engSetVisible>

Afficher ou masquer la session du moteur Nelson

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("int engSetVisible(Engine *ep, bool value);");

== Argument d'entrée

/ Engine \*ep: poignée du moteur Nelson.
/ bool value: mettre la valeur à 1 pour rendre la fenêtre du moteur visible, ou à 0 pour la rendre invisible.

== Argument de sortie

/ int: 0 en cas de succès ou 1 si une erreur survient.

== Description

Afficher ou masquer la session du moteur Nelson


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engGetVisible>)[engGetVisible];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
