#import "nelson_help.typ": *

= gettext <i18n:gettext>

Obtient le texte traduit pour la locale courante.

== Syntaxe

- #raw("translated_string = gettext(your_string)");
- #raw("translated_string = _(your_string))");

== Argument d'entrée

/ your\_string: une chaîne : message à traduire.

== Argument de sortie

/ translated\_string: une chaîne : message traduit.

== Description

#strong[translated\_string \= gettext(your\_string)]; obtient la traduction d'une chaîne #strong[your\_string]; pour la locale courante dans le domaine Nelson.

 #strong[\_(your\_string)]; est un alias de #strong[gettext(your\_string)];.


== Exemple

``````matlab
disp(_('function not found.'))
``````


== Voir aussi

#nlink(<localization:setlanguage>)[setlanguage];, #nlink(<localization:getlanguage>)[getlanguage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
