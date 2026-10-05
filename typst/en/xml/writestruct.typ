#import "nelson_help.typ": *

= writestruct <xml:writestruct>

Write a structure as XML

== Syntax

- #raw("writestruct(s, filename)");
- #raw("writestruct(s, filename, name, value)");

== Input argument

/ s: a structure or object to serialize.
/ filename: a string: path to the output XML file.
/ name, value: optional pairs: 'FileType', 'StructNodeName', 'AttributeSuffix', or 'PrettyPrint'.

== Description

writestruct creates an XML document from a structure and writes it to a file.


== Example

``````matlab
s = struct();
s.name = 'Nelson';
s.value = 12;
filename = [tempdir(), 'writestruct_example.xml'];
writestruct(s, filename, 'StructNodeName', 'root');
fileread(filename)
``````


== See also

#nlink(<xml:readstruct>)[readstruct];, #nlink(<xml:xmlwrite>)[xmlwrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
