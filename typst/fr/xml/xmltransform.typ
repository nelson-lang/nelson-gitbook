#import "nelson_help.typ": *

= xmltransform <xml:xmltransform>

Transformation XML utilisant XSLT

== Syntaxe

- #raw("xmltransform(xml_file, xslt_file, output_file, overwrite)");
- #raw("r = xmltransform(xml_file, xslt_file, output_file, overwrite)");

== Argument d'entrée

/ xml\_file: une chaîne : chemin vers le fichier XML d'entrée.
/ xslt\_file: une chaîne : chemin vers le fichier XSLT.
/ output\_file: une chaîne : chemin vers le fichier de sortie.
/ overwrite: un logique : vrai pour écraser le fichier de sortie s'il existe (par défaut), faux sinon.

== Argument de sortie

/ r: un logique : vrai si la transformation a réussi, faux sinon.

== Description

Cette fonction applique une transformation XSLT à un fichier XML et enregistre le résultat dans un fichier de sortie.

 Si le fichier de sortie existe déjà et que 'overwrite' est défini sur false, la fonction ne effectuera pas la transformation et renverra false.


== Exemple

``````matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
  xsl_filename = [modulepath('xml'), '/tests/test_xml_to_text.xslt'];
  output_filename = [tempdir(), 'test_xml_output.html'];
  fileread(xml_filename)
  R = xmltransform(xml_filename, xsl_filename, output_filename)
  fileread(output_filename)
end
``````


== Voir aussi

#nlink(<xml:xmlchecker>)[xmlchecker];, #nlink(<help_tools:xmldoctohtml>)[xmldoctohtml];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
