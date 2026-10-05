#import "nelson_help.typ": *

= nelson.display.DisplayFormatOptions <display_format:DisplayFormatOptions>

Objet d'options de format d'affichage.

== Syntaxe

- #raw("fmt = nelson.display.DisplayFormatOptions()");
- #raw("fmt = nelson.display.DisplayFormatOptions(Name, Value)");

== Argument d'entrée

/ Name, Value: paires nom-valeur pour NumericFormat, LineSpacing et TruncateMatrices

== Argument de sortie

/ fmt: objet d'options de format d'affichage

== Description

#strong[nelson.display.DisplayFormatOptions]; stocke les options de format d'affichage utilisees par #strong[format];.

 L'objet a trois proprietes publiques : #strong[NumericFormat];, #strong[LineSpacing]; et #strong[TruncateMatrices];.

 #strong[NumericFormat]; peut valoir #strong[short];, #strong[long];, #strong[shortE];, #strong[longE];, #strong[shortG];, #strong[longG];, #strong[shortEng];, #strong[longEng];, #strong[+];, #strong[bank];, #strong[hex]; ou #strong[rational];.

 #strong[LineSpacing]; peut valoir #strong[compact]; ou #strong[loose];.

 #strong[TruncateMatrices]; peut valoir #strong[on]; ou #strong[off];. Dans la fenetre de commande graphique, #strong[on]; tronque les grandes matrices 2D numeriques, logiques et sparse lorsque leur affichage complet depasse la zone visible.


== Exemple

Sauvegarder et restaurer le format d'affichage.

``````matlab
oldFormat = format();
fmt = nelson.display.DisplayFormatOptions('NumericFormat', 'longE', 'LineSpacing', 'compact', 'TruncateMatrices', 'on');
format(fmt)
format(oldFormat)
``````


== Voir aussi

#nlink(<display_format:format>)[format];, #nlink(<display_format:disp>)[disp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
