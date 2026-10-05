#import "nelson_help.typ": *

= xmldocchecker <help_tools:xmldocchecker>

Vérifie un fichier de documentation XML.

== Syntaxe

- #raw("xmldocchecker()");
- #raw("xmldocchecker(xmldocfilename)");
- #raw("[state, errors_detected, warnings_detected] = xmldocchecker(xmldocfilename)");

== Argument d'entrée

/ xmldocfilename: une chaîne : document xml.

== Argument de sortie

/ state: un booléen : vrai si le document est valide, faux sinon.
/ errors\_detected: un tableau (cell) de chaînes : erreurs détectées.
/ warnings\_detected: un tableau (cell) de chaînes : avertissements détectés.

== Description

#strong[xmldocchecker]; est un outil pour vérifier qu'un document XML est valide.

 Utilisé pour valider la structure et le contenu des fichiers XML de la documentation de Nelson.

 #strong[xmldocchecker()]; vérifie la validité de tous les fichiers XML de la documentation de Nelson.


== Exemple

``````matlab
xmldocchecker([nelsonroot(),'/module_skeleton/help/en_US/xml/nelson_sum.xml'])
``````


== Voir aussi

#nlink(<xml:xmlchecker>)[xmlchecker];, #nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpweb>)[buildhelpweb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.15.0], [Use xmlchecker pour la validation XML.],
)

// Auteur: Allan CORNET
