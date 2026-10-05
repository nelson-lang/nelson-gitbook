#import "nelson_help.typ": *

= xmlwrite <xml:xmlwrite>

Sérialiser un objet document XML

== Syntaxe

- #raw("txt = xmlwrite(doc)");
- #raw("xmlwrite(filename, doc)");

== Argument d'entrée

/ doc: un objet document XML retourné par xmlread, ou du texte XML.
/ filename: une chaîne : chemin vers le fichier XML de sortie.

== Argument de sortie

/ txt: une chaîne contenant le XML sérialisé.

== Description

xmlwrite convertit un objet document XML en texte ou l'écrit dans un fichier.


== Exemple

``````matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
doc = xmlread(xml_filename);
out_filename = [tempdir(), 'xmlwrite_example.xml'];
xmlwrite(out_filename, doc);
isfile(out_filename)
``````


== Voir aussi

#nlink(<xml:xmlread>)[xmlread];, #nlink(<xml:writestruct>)[writestruct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
