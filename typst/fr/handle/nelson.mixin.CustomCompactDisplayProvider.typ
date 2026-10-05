#import "nelson_help.typ": *

= nelson.mixin.CustomCompactDisplayProvider <handle:nelson.mixin.CustomCompactDisplayProvider>

Fournir un affichage compact d'un objet dans les conteneurs.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.CustomCompactDisplayProvider");

== Argument d'entrée

/ obj: objet d'une classe derivee de nelson.mixin.CustomCompactDisplayProvider.
/ config: configuration d'affichage utilisee pour la sortie compacte.
/ width: largeur maximale d'affichage.

== Argument de sortie

/ rep: representation d'affichage compact.

== Description

Dérivez de #strong[nelson.mixin.CustomCompactDisplayProvider]; pour contrôler l'affichage compact d'un objet lorsqu'il apparaît dans un conteneur tel qu'une cellule ou une structure.

 Une sous-classe implémente #strong[compactRepresentationForSingleLine(obj, config, width)];, qui renvoie un objet #strong[nelson.display.CompactDisplayRepresentation]; décrivant l'objet sur une ligne. La représentation est habituellement construite avec la méthode héritée #strong[widthConstrainedDataRepresentation(obj, config, width, 'StringArray', texte)];, qui assemble les données fournies avec le délimiteur défini par #strong[config]; (un #strong[nelson.display.DisplayConfiguration];) et les tronque avec les points de suspension configurés lorsqu'elles dépassent #strong[width]; caractères. Lorsqu'une instance est affichée dans un conteneur tel qu'une cellule, un champ de structure ou une colonne de #strong[table];, le texte obtenu est utilisé à la place du #strong[\[1x1 ClassName\]]; par défaut.

 Une méthode compagnon #strong[compactRepresentationForColumn(obj, config, width)]; peut être implémentée pour les dispositions en colonne, et #strong[fullDataRepresentation(obj, config, ...)]; construit une représentation sans contrainte de largeur. Lorsque ces méthodes ne sont pas surchargées, la représentation par défaut est utilisée.


== Exemple

Une température affichée de façon compacte dans une cellule.

``````matlab
classdef Temp < nelson.mixin.CustomCompactDisplayProvider
  properties
    Celsius = 0
  end
  methods
    function obj = Temp(c)
      if nargin > 0
        obj.Celsius = c;
      end
    end
    function rep = compactRepresentationForSingleLine(obj, config, width)
      txt = [num2str(obj.Celsius), ' degC'];
      rep = widthConstrainedDataRepresentation(obj, config, width, 'StringArray', string(txt));
    end
  end
end
c = {Temp(20), Temp(37)}   % affiche {20 degC}  {37 degC}
``````


== Voir aussi

#nlink(<handle:nelson.mixin.CustomDisplay>)[nelson.mixin.CustomDisplay];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
