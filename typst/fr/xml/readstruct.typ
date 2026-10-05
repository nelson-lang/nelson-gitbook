#import "nelson_help.typ": *

= readstruct <xml:readstruct>

Lire des données XML comme structure

== Syntaxe

- #raw("s = readstruct(filename)");
- #raw("s = readstruct(filename, name, value)");

== Argument d'entrée

/ filename: une chaîne : chemin vers le fichier XML.
/ name, value: paires optionnelles : 'FileType', 'StructNodeName', 'StructSelector', 'ImportAttributes', 'AttributeSuffix', 'RegisteredNamespaces' ou 'DateLocale'.

== Argument de sortie

/ s: une structure, une valeur scalaire, un tableau de cellules ou un tableau de structures selon le contenu XML.

== Description

readstruct lit les éléments XML sous forme de valeurs Nelson. Les attributs sont importés par défaut avec le suffixe 'Attribute'.

 Les noms XML qui ne sont pas des noms de champs valides sont convertis en noms de champs Nelson valides. Les espaces de noms peuvent être utilisés dans 'StructSelector' au moyen de 'RegisteredNamespaces'.


== Exemples

Lire des données XML dans une structure Nelson.

``````matlab
filename = [tempdir(), 'readstruct_books.xml'];
xml_text = ['<catalog source="local">', ...
            '<book id="b1"><title>Numerical Methods</title><year>2026</year></book>', ...
            '<book id="b2"><title>Signal Processing</title><year>2025</year></book>', ...
            '</catalog>'];
filewrite(filename, xml_text);
s = readstruct(filename);
s.sourceAttribute
s.book(1).idAttribute
s.book(1).title
s.book(1).year
``````

Lire un élément XML sélectionné avec un sélecteur XPath.

``````matlab
filename = [tempdir(), 'readstruct_selected_book.xml'];
xml_text = ['<catalog>', ...
            '<book id="b1"><title>Numerical Methods</title></book>', ...
            '<book id="b2"><title>Signal Processing</title></book>', ...
            '</catalog>'];
filewrite(filename, xml_text);
book = readstruct(filename, 'StructSelector', '//book');
book.idAttribute
book.title
``````


== Voir aussi

#nlink(<xml:writestruct>)[writestruct];, #nlink(<xml:xmlread>)[xmlread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
