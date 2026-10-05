#import "nelson_help.typ": *

= docroot <help_tools:docroot>

Retrieve or update the root directory for Nelson Help system.

== Syntax

- #raw("r = docroot()");
- #raw("r = docroot(new_docroot)");

== Input argument

/ new\_docroot: a string: ' ', '.', or a URL.

== Description

#strong[docroot]; retrieves or updates the root directory for Nelson Help.

 When called without an argument,#strong[docroot]; returns the current root directory for Nelson Help. By default, it returns the URL of the help website used by Nelson.

 When called with an argument,#strong[docroot]; updates the root directory for Nelson Help.

 #strong[docroot(' ')]; resets the root directory for Nelson Help to the default value.

 #strong[docroot('.')]; uses local help files and the local browser (restores behavior before v1.11.0).


== Example

``````matlab

docroot()
doc rand
docroot('.')
doc rand
docroot('')
      
``````


== See also

#nlink(<help_tools:doc>)[doc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
