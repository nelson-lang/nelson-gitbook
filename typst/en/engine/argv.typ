#import "nelson_help.typ": *

= argv <engine:argv>

Nelson command line arguments.

== Syntax

- #raw("args = argv()");
- #raw("args = argv('user')");

== Input argument

/ 'user': returns only arguments after the command line separator #strong[--];.

== Output argument

/ args: a cell array of strings.

== Description

#strong[argv()]; returns a cell array of strings containing the complete Nelson command line arguments.

 The first element of the cell array contains the path of the launched executable.

 #strong[argv('user')]; returns only the arguments placed after #strong[--];. The separator itself is not returned.

 If the command line does not contain #strong[--];, #strong[argv('user')]; returns an empty cell array.

 When a test is executed by #strong[test\_run];, #strong[argv('user')]; can contain user arguments supplied by the test manager, for example startup control flags placed after #strong[--];.

 Quotes used for grouping command line arguments are handled by the operating system or shell before Nelson starts. Nelson keeps the arguments exactly as received.


== Examples

``````matlab
argv()
``````

``````matlab
argv('user')
``````

``````matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
``````


== See also

#nlink(<engine:executable>)[executable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
