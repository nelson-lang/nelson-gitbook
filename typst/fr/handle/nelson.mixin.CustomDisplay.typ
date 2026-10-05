#import "nelson_help.typ": *

= nelson.mixin.CustomDisplay <handle:nelson.mixin.CustomDisplay>

Personnaliser l'affichage d'un objet.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.CustomDisplay");

== Argument d'entrée

/ obj: objet d'une classe derivee de nelson.mixin.CustomDisplay.

== Argument de sortie

/ txt: texte d'affichage personnalise produit par les methodes de la classe derivee.

== Description

Dérivez de #strong[nelson.mixin.CustomDisplay]; pour personnaliser l'affichage des instances d'une classe. Une sous-classe peut surcharger l'une de ces méthodes protégées et laisser la composition par défaut afficher le reste :

 #strong[getHeader(obj)]; - le texte d'en-tête (un vecteur de caractères ou une string scalaire). Par défaut : le nom de la classe suivi de #strong[with properties:];.

 #strong[getFooter(obj)]; - le texte de pied (char ou string). Par défaut : vide.

 #strong[getPropertyGroups(obj)]; - un tableau d'objets #strong[nelson.mixin.util.PropertyGroup]; décrivant quelles propriétés sont affichées et comment elles sont groupées. Par défaut : un seul groupe avec toutes les propriétés publiques.

 #strong[displayScalarObject(obj)];, #strong[displayNonScalarObject(obj)]; et #strong[displayEmptyObject(obj)]; - prennent le contrôle complet de l'affichage d'un objet scalaire, d'un tableau d'objets, ou d'un tableau d'objets vide respectivement.

 Lorsque aucune des méthodes d'affichage n'est surchargée, l'objet est affiché comme #strong[getHeader];, puis les groupes de propriétés, puis #strong[getFooter];.


== Exemple

Surcharger seulement l'en-tête et le pied.

``````matlab
classdef Point < nelson.mixin.CustomDisplay
  properties
    X = 0
    Y = 0
  end
  methods (Access = protected)
    function h = getHeader(obj)
      h = "A 2-D point:";
    end
    function f = getFooter(obj)
      f = '(cartesian)';
    end
  end
end
``````


== Voir aussi

#nlink(<types:nelson.mixin.util.PropertyGroup>)[nelson.mixin.util.PropertyGroup];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
