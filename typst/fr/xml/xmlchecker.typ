#import "nelson_help.typ": *

= xmlchecker <xml:xmlchecker>

Vérifie un fichier XML par rapport à un XSD.

== Syntaxe

- #raw("xmlchecker(xmlfile, xsdfile)");
- #raw("[state, errors_detected, warnings_detected] = xmlchecker(xmlfile, xsdfile)");

== Argument d'entrée

/ xmlfile: une chaîne : chemin vers le fichier XML.
/ xsdfile: une chaîne : chemin vers le fichier XSD.

== Argument de sortie

/ state: un logique : vrai si le document est valide, faux sinon.
/ errors\_detected: une cellule de chaînes : erreurs détectées.
/ warnings\_detected: une cellule de chaînes : avertissements détectés.

== Description

#strong[xmlchecker]; est un outil pour vérifier qu'un fichier XML est valide par rapport à un fichier XSD.


== Exemple

``````matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
  xsd_filename = [modulepath('xml'), '/tests/test_xml.xsd'];
  [is_valid, errors] = xmlchecker(xml_filename, xsd_filename);
end
``````


== Voir aussi

#nlink(<help_tools:xmldocchecker>)[xmldocchecker];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
