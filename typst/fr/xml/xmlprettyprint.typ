#import "nelson_help.typ": *

= xmlprettyprint <xml:xmlprettyprint>

formate un fichier XML.

== Syntaxe

- #raw("xmlprettyprint(xml_file)");

== Argument d'entrée

/ xml\_file: un fichier XML valide.
/ format\_space: un booléen indiquant s'il faut formater avec des espaces (true) ou non (false).

== Description

#strong[xmlprettyprint]; formate un fichier XML pour qu'il soit lisible par un humain.


== Exemple

``````matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
    xml_tmp = [tempdir(), 'test_xml.xml'];
    copyfile(xml_filename, xml_tmp);
    xmlprettyprint(xml_tmp, false);
    fileread(xml_tmp)
    xmlprettyprint(xml_tmp, true);
    fileread(xml_tmp)
end
``````


== Voir aussi

#nlink(<json:jsonprettyprint>)[jsonprettyprint];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
