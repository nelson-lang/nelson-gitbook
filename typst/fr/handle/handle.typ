#import "nelson_help.typ": *

= handle <handle:handle>

Classe de base des objets à sémantique de référence.

== Syntaxe

- #raw("classdef MaClasse < handle");

== Argument d'entrée

/ aucun: handle s'utilise comme super-classe et ne s'appelle pas directement.

== Argument de sortie

/ aucun: handle s'utilise comme super-classe et ne s'appelle pas directement.

== Description

#strong[handle]; est la classe de base abstraite dont dérive toute classe handle. Une classe déclarée par #strong[classdef MaClasse \< handle]; possède une sémantique de référence : les variables qui contiennent l'objet sont des références vers une unique instance sous-jacente, et non des copies indépendantes.

 Affecter un objet handle à une autre variable, ou le passer à une fonction, copie la référence et non les données. Toutes les références observent alors les mêmes valeurs de propriétés, et une modification effectuée via une référence est visible via toutes les autres références au même objet.

 Ce comportement diffère de celui d'une classe valeur (le cas par défaut lorsqu'aucune super-classe n'est indiquée), où chaque affectation produit une copie indépendante.

 Dériver de #strong[handle]; fournit également les services communs aux handles : gestion du cycle de vie avec #strong[delete]; et #strong[isvalid];, comparaison d'égalité et relationnelle des références, ainsi que les mécanismes de réflexion, d'événements, d'écouteurs et de propriétés dynamiques exposés par les classes handle associées.

 Pour obtenir une copie indépendante d'un objet handle, dérivez la classe de #strong[nelson.mixin.Copyable]; et utilisez sa méthode #strong[copy];.


== Exemple

Sémantique de référence d'une classe handle.

``````matlab
d = [tempdir(), 'nelson_help_handle/'];
mkdir(d);
filewrite([d, '/NelsonHelpHandleCounter.m'], ["classdef NelsonHelpHandleCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpHandleCounter();
b = a;         % b reference le meme objet que a
b.Count = 5;
a.Count        % 5 : a et b partagent la meme instance
isvalid(a)     % true
delete(a);
isvalid(b)     % false : l'objet partage a ete detruit
``````


== Voir aussi

#nlink(<interpreter:classdef>)[classdef];, #nlink(<handle:nelson.mixin.Copyable>)[nelson.mixin.Copyable];, #nlink(<handle:isvalid>)[isvalid];, #nlink(<handle:delete>)[delete];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
