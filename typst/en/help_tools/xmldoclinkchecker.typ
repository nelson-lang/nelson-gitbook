#import "nelson_help.typ": *

= xmldoclinkchecker <help_tools:xmldoclinkchecker>

Checks unresolved cross-references in Nelson help XML files.

== Syntax

- #raw("xmldoclinkchecker()");
- #raw("xmldoclinkchecker(xmldocfilename)");
- #raw("xmldoclinkchecker(xmldocdirectory)");
- #raw("[state, errors_detected, warnings_detected] = xmldoclinkchecker(target)");

== Input argument

/ target: a string: XML file or directory to check.

== Output argument

/ state: a logical: true if all references are resolved, false otherwise.
/ errors\_detected: a cell array of strings: unresolved link references and related errors.
/ warnings\_detected: a cell array of strings: warnings detected during validation.

== Description

#strong[xmldoclinkchecker]; validates #raw("\n        <link linkend=\"...\"/>\n      "); references used in Nelson help XML pages.

 It checks references in a single XML file, a directory tree, or all installed module help XML files when called without arguments.

 This function is useful to detect broken cross-references before building HTML\/Markdown help outputs.

 The link target uses the XML page file name without the #raw(".xml"); extension, optionally prefixed with a module name such as #raw("${dynamic_link}havecompiler");.


== Examples

Check links in one help XML file.

``````matlab
[state, errors_detected] = xmldoclinkchecker([modulepath('help_tools'), '/help/en_US/xml/xmldocchecker.xml'])
``````

Check all links in a module help XML directory.

``````matlab
xmldoclinkchecker([modulepath('help_tools'), '/help/en_US/xml'])
``````


== See also

#nlink(<help_tools:xmldocchecker>)[xmldocchecker];, #nlink(<help_tools:xmldocbuild>)[xmldocbuild];, #nlink(<help_tools:buildhelp>)[buildhelp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
