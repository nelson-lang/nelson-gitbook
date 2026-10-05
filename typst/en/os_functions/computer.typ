#import "nelson_help.typ": *

= computer <os_functions:computer>

System information.

== Syntax

- #raw("c = computer()");
- #raw("[c, maxsize] = computer()");
- #raw("[c, maxsize, endian] = computer()");
- #raw("arch = computer('arch')");

== Input argument

/ 'arch': a string: returns the architecture of the computer.

== Output argument

/ c: a string: computer type: 'PCWIN', 'PCWIN64', 'PCWOA64', 'GLNXA64', 'GLNXA32', 'MACI32', 'MACI64', 'MACA64'
/ maxsize: a integer value: maximum number of elements allowed in an array.
/ endian: a string: 'L' for little-endian, 'B' for big-endian.
/ arch: a string: architecture type: 'woa64', 'win64', 'win32', 'glnxa64', 'glnxa32', 'maci64', 'maci32', 'maca64'.

== Description

#strong[computers]; identifies the type of computer that Nelson is running on.


== Example

``````matlab
c = computer()
[c, maxsize] = computer()
[c, maxsize, endian] = computer()
arch = computer('arch')
``````


== See also

#nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:ismac>)[ismac];, #nlink(<os_functions:isunix>)[isunix];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.16.0], [PCWOA64 and woa64 added],
)

// Author: Allan CORNET
