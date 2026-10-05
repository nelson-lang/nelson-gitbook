#import "nelson_help.typ": *

= format <display_format:format>

Format d'affichage et impression des nombres.

== Syntaxe

- #raw("fmt = format()");
- #raw("format()");
- #raw("format('default')");
- #raw("format(new_style)");
- #raw("format('truncateMatrices', 'on')");
- #raw("format('truncateMatrices', 'off')");
- #raw("format(fmt)");

== Argument d'entrée

/ new\_style: une chaine ou un vecteur de caracteres
/ fmt: un objet nelson.display.DisplayFormatOptions

== Argument de sortie

/ fmt: objet nelson.display.DisplayFormatOptions : format d'affichage courant

== Description

#strong[format(new\_style)]; modifie le format d'affichage et l'impression des nombres pour la session courante.

 #strong[format('default')]; reinitialise le format par defaut (short, loose, truncateMatrices on).

 #strong[fmt \= format()]; retourne un objet #strong[nelson.display.DisplayFormatOptions]; avec les valeurs courantes de #strong[NumericFormat];, #strong[LineSpacing]; et #strong[TruncateMatrices];.

 #strong[format(fmt)]; restaure le format d'affichage stocke dans un objet #strong[nelson.display.DisplayFormatOptions];.

 

 Formats numeriques pris en charge :

 #strong[short];

 #strong[long];

 #strong[shortE];

 #strong[longE];

 #strong[shortG];

 #strong[longG];

 #strong[shortEng];

 #strong[longEng];

 #strong[+];

 #strong[bank];

 #strong[rational];

 #strong[hex];

 

 Formats d'espacement de ligne pris en charge :

 #strong[loose];

 #strong[compact];

 

 Formats de troncature de matrice pris en charge :

 #strong[format('truncateMatrices', 'on')];

 #strong[format('truncateMatrices', 'off')];


== Exemple

Sauvegarder et restaurer le format d'affichage.

``````matlab
current_style = format()
pi
format('longE')
pi
format('compact')
pi
format(current_style)
pi
``````


== Voir aussi

#nlink(<display_format:DisplayFormatOptions>)[nelson.display.DisplayFormatOptions];, #nlink(<display_format:disp>)[disp];, #nlink(<display_format:display>)[display];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [format retourne et accepte des objets classdef nelson.display.DisplayFormatOptions.],
)

// Auteur: Allan CORNET
