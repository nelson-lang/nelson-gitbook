#import "nelson_help.typ": *

= xmlwrite <xml:xmlwrite>

Serialize an XML document object

== Syntax

- #raw("txt = xmlwrite(doc)");
- #raw("xmlwrite(filename, doc)");

== Input argument

/ doc: an XML document object returned by xmlread, or XML text.
/ filename: a string: path to the output XML file.

== Output argument

/ txt: a string containing serialized XML.

== Description

xmlwrite converts an XML document object to text or writes it to a file.


== Example

``````matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
doc = xmlread(xml_filename);
out_filename = [tempdir(), 'xmlwrite_example.xml'];
xmlwrite(out_filename, doc);
isfile(out_filename)
``````


== See also

#nlink(<xml:xmlread>)[xmlread];, #nlink(<xml:writestruct>)[writestruct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
