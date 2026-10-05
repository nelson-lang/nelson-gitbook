#import "nelson_help.typ": *

= nelson.mixin.SetGet <handle:nelson.mixin.SetGet>

Ajouter l'accès aux propriétés par set et get à une classe handle.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.SetGet");
- #raw("set(obj, name, value)");
- #raw("value = get(obj, name)");

== Argument d'entrée

/ obj: un objet handle d'une classe dérivant de nelson.mixin.SetGet.
/ name: un nom de propriété (char ou string), ou un tableau de cellules de noms.
/ value: la valeur à affecter.

== Argument de sortie

/ value: la valeur de la propriété.

== Description

Dérivez une classe handle de #strong[nelson.mixin.SetGet]; pour lui donner des méthodes #strong[set]; et #strong[get]; permettant de lire et écrire les propriétés par nom.

 #strong[set(obj, name, value)]; affecte une propriété ; #strong[set(obj, n1, v1, n2, v2, ...)]; en affecte plusieurs. #strong[get(obj, name)]; renvoie une valeur de propriété ; #strong[get(obj)]; renvoie une structure de toutes les propriétés. Les noms sont comparés sans distinction de casse.


== Exemple

Accès aux propriétés par nom.

``````matlab
classdef Widget < nelson.mixin.SetGet
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100, 'Height', 40);
get(w, 'Width')
``````


== Voir aussi

#nlink(<handle:handle>)[handle];, #nlink(<handle:nelson.mixin.SetGetExactNames>)[nelson.mixin.SetGetExactNames];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
