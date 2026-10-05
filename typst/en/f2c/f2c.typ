#import "nelson_help.typ": *

= f2c <f2c:f2c>

Fortran to C converter.

== Syntax

- #raw("f2c(src, dest)");
- #raw("r = f2c(src, dest)");
- #raw("[r, msg] = f2c(src, dest)");

== Input argument

/ src: a string: fortran source file.
/ dest: a string: destination directory.

== Output argument

/ r: a logical: true if success.
/ msg: a string: error message or ' '.

== Description

#strong[f2c]; converts fortran 66, and fortran 77 files to C.


== Example

``````matlab
f2c([modulepath(nelsonroot(),'f2c','root'), '/tests/dgemm.f'], tempdir());
fileread([tempdir(), 'dgemm.c'])
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
