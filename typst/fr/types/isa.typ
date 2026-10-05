#import "nelson_help.typ": *

= isa <types:isa>

Renvoie true si une variable a la classe ou le type demande.

== Syntaxe

- #raw("res = isa(var, className)");

== Argument d'entrée

/ var: une variable
/ className: un nom de classe ou de type sous forme de chaine

== Argument de sortie

/ res: un logique : true ou false

== Description

#strong[isa]; renvoie un logique 1 quand #strong[var]; est une instance de #strong[className];, et 0 sinon.

 #strong[className]; peut etre un nom de type Nelson comme #strong[double];, #strong[cell];, #strong[numeric];, #strong[float]; ou #strong[integer];.

 Pour les objets classdef, #strong[isa]; accepte le nom de classe et les noms de superclasses supportes, y compris #strong[handle]; pour les classes handle.

 Pour les tableaux sparse, #strong[isa]; teste la classe de valeur stockee, par exemple #strong[double]; ou #strong[logical];. Utiliser #strong[issparse]; pour tester le stockage sparse.


== Exemples

Tester un type numerique.

``````matlab
A = 3;
res = isa(A, 'double')
``````

Tester la classe de valeur stockee d'un tableau sparse.

``````matlab
S = sparse([2 0 3]);
isDouble = isa(S, 'double')
isSparse = issparse(S)
``````

Tester un objet handle classdef.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_isa/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsaCounter.m'], ["classdef NelsonHelpIsaCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpIsaCounter();
isCounter = isa(obj, 'NelsonHelpIsaCounter')
isHandle = isa(obj, 'handle')
delete(obj)
``````


== Voir aussi

#nlink(<types:class>)[class];, #nlink(<types:issparse>)[issparse];, #nlink(<types:isobject>)[isobject];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [support des objets classdef documente],
  [2.0.0], [les tableaux sparse sont testes par classe de valeur stockee],
)

// Auteur: Allan CORNET
