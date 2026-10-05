#import "nelson_help.typ": *

= xmltransform <xml:xmltransform>

XML transformation using XSLT

== Syntax

- #raw("xmltransform(xml_file, xslt_file, output_file, overwrite)");
- #raw("r = xmltransform(xml_file, xslt_file, output_file, overwrite)");

== Input argument

/ xml\_file: a string: path to the input XML file.
/ xslt\_file: a string: path to the XSLT file.
/ output\_file: a string: path to the output file.
/ overwrite: a logical: true to overwrite the output file if it exists (default), false otherwise.

== Output argument

/ r: a logical: true if the transformation was successful, false otherwise.

== Description

This function applies an XSLT transformation to an XML file and saves the result to an output file.

 If the output file already exists and 'overwrite' is set to false, the function will not perform the transformation and will return false.


== Example

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


== See also

#nlink(<xml:xmlchecker>)[xmlchecker];, #nlink(<help_tools:xmldoctohtml>)[xmldoctohtml];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
