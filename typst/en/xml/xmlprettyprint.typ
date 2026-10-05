#import "nelson_help.typ": *

= xmlprettyprint <xml:xmlprettyprint>

format an XML file.

== Syntax

- #raw("xmlprettyprint(xml_file)");

== Input argument

/ xml\_file: a valid XML file.
/ format\_space: a boolean indicating whether to format with spaces (true) or not (false).

== Output argument

/ res: a string: a formatted XML text (human readable).

== Description

#strong[xmlprettyprint]; formats a XML file to be human readable.


== Example

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


== See also

#nlink(<json:jsonprettyprint>)[jsonprettyprint];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
