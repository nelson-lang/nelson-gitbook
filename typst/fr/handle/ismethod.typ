#import "nelson_help.typ": *

= ismethod <handle:ismethod>

Renvoie true si une methode publique appartient a un objet ou une classe.

== Syntaxe

- #raw("res = ismethod(h, methodname)");
- #raw("res = ismethod(obj, methodname)");
- #raw("res = ismethod(className, methodname)");

== Argument d'entrée

/ h: un objet handle
/ obj: un objet classdef
/ className: un nom de classe sous forme de chaine
/ methodname: une chaine

== Argument de sortie

/ res: un logique: true ou false

== Description

#strong[ismethod]; renvoie un logique 1 si la methode est publique pour l'objet ou la classe, et 0 sinon.

 Pour les classes classdef, les methodes privees et protegees ne sont pas exposees comme methodes publiques.


== Exemple

Tester l'existence d'une methode publique.

``````matlab
d = [tempdir(), 'nelson_help_ismethod/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsMethodPoint.m'], ["classdef NelsonHelpIsMethodPoint"; "  methods"; "    function r = value(obj)"; "      r = 1;"; "    end"; "  end"; "end"]);
addpath(d);
tf = ismethod('NelsonHelpIsMethodPoint', 'value')
``````


== Voir aussi

#nlink(<handle:isprop>)[isprop];, #nlink(<handle:methods>)[methods];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [support des noms de classe classdef ajoute],
)

// Auteur: Allan CORNET
