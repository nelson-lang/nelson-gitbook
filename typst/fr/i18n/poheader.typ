#import "nelson_help.typ": *

= poheader <i18n:poheader>

Génère l'en-tête d'un fichier PO.

== Syntaxe

- #raw("ce = poheader(domain, language)");

== Argument d'entrée

/ domain: une chaîne : domaine du message.
/ language: une chaîne : langue, ex. 'fr\_FR' ou 'fr\_FR'.

== Argument de sortie

/ ce: un tableau (cell) de chaînes : en-tête du fichier PO.

== Description

#strong[ce \= poheader(domain, language)]; generates po file header.


== Exemple

``````matlab
poheader('nelson', 'fr_FR')
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
