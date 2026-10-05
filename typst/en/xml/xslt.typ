#import "nelson_help.typ": *

= xslt <xml:xslt>

Transform XML using XSLT

== Syntax

- #raw("output_file = xslt(xml_source, xslt_file)");
- #raw("output_file = xslt(xml_source, xslt_file, output_file)");
- #raw("txt = xslt(xml_source, xslt_file, '-tostring')");

== Input argument

/ xml\_source: a string containing an XML file path, or an XML document object.
/ xslt\_file: a string: path to the XSLT file.
/ output\_file: a string: path to the output file.

== Output argument

/ output\_file: the path to the generated output file.
/ txt: the transformed text when '-tostring' is used.

== Description

xslt applies an XSLT stylesheet to XML input. Use '-tostring' to return the transformation result as text.


== Example

``````matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
xsl_filename = [modulepath('xml'), '/tests/test_xml_to_text.xslt'];
txt = xslt(xml_filename, xsl_filename, '-tostring')
``````


== See also

#nlink(<xml:xmltransform>)[xmltransform];, #nlink(<xml:xmlread>)[xmlread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
