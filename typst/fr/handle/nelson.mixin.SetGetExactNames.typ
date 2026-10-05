#import "nelson_help.typ": *

= nelson.mixin.SetGetExactNames <handle:nelson.mixin.SetGetExactNames>

Accès set et get aux propriétés avec noms sensibles à la casse.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.SetGetExactNames");
- #raw("set(obj, nom, valeur)");
- #raw("valeur = get(obj, nom)");

== Argument d'entrée

/ obj: un objet handle d'une classe dérivant de nelson.mixin.SetGetExactNames.
/ nom: un nom de propriété (char ou string), ou un tableau de cellules de noms, écrit avec la casse exacte.
/ valeur: la valeur à affecter.

== Argument de sortie

/ valeur: la valeur de la propriété.

== Description

Dérivez une classe handle de #strong[nelson.mixin.SetGetExactNames]; pour lui donner des méthodes #strong[set]; et #strong[get]; permettant de lire et écrire les propriétés par leur nom. Elle se comporte exactement comme #strong[nelson.mixin.SetGet];, dont elle dérive, sauf que les noms de propriétés sont comparés de façon #strong[sensible à la casse]; : un nom qui ne diffère de la propriété déclarée que par la casse est rejeté.

 #strong[set(obj, nom, valeur)]; affecte une propriété ; #strong[set(obj, n1, v1, n2, v2, ...)]; en affecte plusieurs. #strong[get(obj, nom)]; renvoie la valeur d'une propriété ; #strong[get(obj)]; renvoie une structure de toutes les propriétés.


== Exemple

Accès aux propriétés par nom, sensible à la casse.

``````matlab
classdef Widget < nelson.mixin.SetGetExactNames
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100);
get(w, 'Width')     % renvoie 100
get(w, 'width')     % erreur : 'width' n'est pas le nom déclaré 'Width'
``````


== Voir aussi

#nlink(<handle:handle>)[handle];, #nlink(<handle:nelson.mixin.SetGet>)[nelson.mixin.SetGet];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
