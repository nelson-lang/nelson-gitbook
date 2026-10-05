#import "../nelson_help.typ": *

= strip <string:7_edit_text.strip>

Supprimer des caracteres en debut et fin de texte.

== Syntaxe

- #raw("res = strip(str)");
- #raw("res = strip(str, side)");
- #raw("res = strip(str, side, stripCharacter)");

== Argument d'entrée

/ str: tableau de caracteres, chaine scalaire, tableau de chaines ou cellule de vecteurs de caracteres.
/ side: selecteur de cote optionnel : leading, trailing, left, right ou both lorsque c'est pris en charge.
/ stripCharacter: caractere optionnel a supprimer a la place des blancs.

== Argument de sortie

/ res: texte dont les caracteres selectionnes en debut ou fin ont ete supprimes.

== Description

strip supprime par defaut les blancs en debut et fin de texte.

 Des arguments optionnels peuvent selectionner un cote et le caractere a supprimer lorsque le module string le prend en charge.


== Fonction(s) utilisée(s)

strtrim

== Exemple

Supprimer les blancs au debut et a la fin d'une chaine.

``````matlab
txt = strip("  Nel Son  ")
``````


== Voir aussi

#nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:7_edit_text.deblank>)[deblank];, #nlink(<string:7_edit_text.lower>)[lower];, #nlink(<string:7_edit_text.upper>)[upper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
