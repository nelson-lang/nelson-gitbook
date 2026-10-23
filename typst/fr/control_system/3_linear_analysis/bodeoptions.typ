#import "../nelson_help.typ": *

= bodeoptions <control_system:3_linear_analysis.bodeoptions>

Options d'un diagramme de Bode.

== Syntaxe

- #raw("opt = bodeoptions()");

== Argument de sortie

/ opt: une structure contenant les options du diagramme de Bode.

== Description

#strong[opt \= bodeoptions()]; renvoie une structure contenant les options du diagramme de Bode avec leurs valeurs par défaut.

 La structure renvoyée peut être passée à #strong[bodeplot]; pour personnaliser le rendu. Les champs pris en compte sont :

 #strong[PhaseUnits]; : #strong['deg']; (par défaut) ou #strong['rad'];.

 #strong[Grid]; : #strong['off']; (par défaut) ou #strong['on'];.

 Des champs supplémentaires (#strong[FreqUnits];, #strong[MagUnits];, #strong[Title];, #strong[XLabel];, #strong[YLabel];) sont fournis avec des valeurs par défaut afin que l'affectation ne provoque pas d'erreur.


== Exemple

``````matlab
opt = bodeoptions();
opt.PhaseUnits = 'rad';
opt.Grid = 'on'

``````


== Voir aussi

#nlink(<control_system:3_linear_analysis.bodeplot>)[bodeplot];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
