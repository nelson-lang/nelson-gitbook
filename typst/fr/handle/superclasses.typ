#import "nelson_help.typ": *

= superclasses <handle:superclasses>

Noms des superclasses d'une classe.

== Syntaxe

- #raw("s = superclasses(className)");
- #raw("s = superclasses(obj)");

== Argument d'entrée

/ className: un nom de classe (chaîne ou vecteur de caractères).
/ obj: un objet classdef ou handle.

== Argument de sortie

/ s: un tableau de cellules N-par-1 de caractères contenant les noms de toutes les superclasses visibles, ancêtre le plus proche en premier.

== Description

#strong[superclasses]; renvoie les noms de toutes les superclasses visibles d'une classe, spécifiée par son nom ou par un objet de cette classe. Les ancêtres sont renvoyés du plus proche au plus lointain, chaque nom apparaissant une seule fois.


== Exemple

Noms des superclasses d'une classe.

``````matlab
d = [tempdir(), 'nelson_help_superclasses/'];
mkdir(d);
filewrite([d, '/NelsonHelpBase.m'], ["classdef NelsonHelpBase"; "end"]);
filewrite([d, '/NelsonHelpDeriv.m'], ["classdef NelsonHelpDeriv < NelsonHelpBase"; "end"]);
addpath(d);
superclasses('NelsonHelpDeriv')
``````


== Voir aussi

#nlink(<handle:metaclass>)[metaclass];, #nlink(<handle:properties>)[properties];, #nlink(<handle:methods>)[methods];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
