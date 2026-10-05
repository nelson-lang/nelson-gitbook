#import "nelson_help.typ": *

= parsefile <interpreter:parsefile>

Parse a Nelson file.

== Syntax

- #raw("status = parsefile(filename)");

== Input argument

/ filename: a string: a filename to parse.

== Output argument

/ status: a string: 'script', 'function', 'error'.

== Description

#strong[parsefile]; parse a file and returns if it is a valid script, a valid function or an error.


== Example

``````matlab
parsefile([nelsonroot(), '/etc/startup.m'])
parsefile([nelsonroot(), '/modules/data_structures/functions/cellstr.m'])
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
