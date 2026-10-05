#import "nelson_help.typ": *

= createGUID <os_functions:createGUID>

Creates a GUID.

== Syntax

- #raw("s = createGUID()");
- #raw("c = createGUID(numbers_of_GUID)");

== Input argument

/ numbers\_of\_GUID: an integer value: numbers of GUID to create.

== Output argument

/ s: a string
/ c: a cell of strings.

== Description

#strong[createGUID]; creates a Globally Unique IIdentifier (GUID), a unique 128-bit integer used for CLSIDs and interface identifiers.


== Example

``````matlab
createGUID()
createGUID(10)
``````


== See also

#nlink(<files_folders_functions:tempname>)[tempname];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
