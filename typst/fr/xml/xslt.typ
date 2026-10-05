#import "nelson_help.typ": *

= xslt <xml:xslt>

Transformer du XML avec XSLT

== Syntaxe

- #raw("output_file = xslt(xml_source, xslt_file)");
- #raw("output_file = xslt(xml_source, xslt_file, output_file)");
- #raw("txt = xslt(xml_source, xslt_file, '-tostring')");

== Argument d'entrée

/ xml\_source: une chaîne contenant le chemin d'un fichier XML, ou un objet document XML.
/ xslt\_file: une chaîne : chemin vers le fichier XSLT.
/ output\_file: une chaîne : chemin vers le fichier de sortie.

== Argument de sortie

/ output\_file: le chemin du fichier de sortie généré.
/ txt: le texte transformé quand '-tostring' est utilisé.

== Description

xslt applique une feuille XSLT à une entrée XML. Utilisez '-tostring' pour retourner le résultat sous forme de texte.


== Exemple

``````matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
xsl_filename = [modulepath('xml'), '/tests/test_xml_to_text.xslt'];
txt = xslt(xml_filename, xsl_filename, '-tostring')
``````


== Voir aussi

#nlink(<xml:xmltransform>)[xmltransform];, #nlink(<xml:xmlread>)[xmlread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
