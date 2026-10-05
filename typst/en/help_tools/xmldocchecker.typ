#import "nelson_help.typ": *

= xmldocchecker <help_tools:xmldocchecker>

Checks a xml documentation file.

== Syntax

- #raw("xmldocchecker()");
- #raw("xmldocchecker(xmldocfilename)");
- #raw("[state, errors_detected, warnings_detected] = xmldocchecker(xmldocfilename)");

== Input argument

/ xmldocfilename: a string: xml document.

== Output argument

/ state: a logical: true if the document is valid, false otherwise.
/ errors\_detected: a cell of strings: errors detected.
/ warnings\_detected: a cell of strings: warnings detected.

== Description

#strong[xmldocchecker]; is a tool to check that a xml document is valid.

 Principally used to validate the structure and content of XML files against nelson's help documentation.

 #strong[xmldocchecker()]; check validity of all XML documentation files.


== Example

``````matlab
xmldocchecker([nelsonroot(),'/module_skeleton/help/en_US/xml/nelson_sum.xml'])
``````


== See also

#nlink(<xml:xmlchecker>)[xmlchecker];, #nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpweb>)[buildhelpweb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.15.0], [Use xmlchecker for XML validation.],
)

// Author: Allan CORNET
