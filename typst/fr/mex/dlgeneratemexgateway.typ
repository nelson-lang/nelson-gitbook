#import "nelson_help.typ": *

= dlgeneratemexgateway <mex:dlgeneratemexgateway>

Génère une passerelle MEX en C (fonction interne).

== Syntaxe

- #raw("dlgeneratemexgateway(destinationdir, function_name)");

== Argument d'entrée

/ destinationdir: une chaîne : répertoire de destination où sera généré le fichier passerelle.
/ function\_name: une chaîne : nom de la fonction exposée dans Nelson.
/ interleavedcomplex: un booléen : utiliser la représentation complexe interlacée.

== Description

#strong[dlgeneratemexgateway]; génère une passerelle MEX en C utilisée par#strong[mex]; (fonction interne).


== Voir aussi

#nlink(<mex:mex>)[mex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
