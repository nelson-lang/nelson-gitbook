#import "nelson_help.typ": *

= test\_makeref <tests_manager:test_makeref>

Creates a '.ref' file for a test

== Syntax

- #raw("status = test_makeref(filename)");

== Input argument

/ filename: a string: filename, a test file.

== Output argument

/ status: a logical: true if .ref was generated.

== Description

#strong[test\_makeref]; function creates a '.ref' file from a test file.

 #strong[test\_makeref]; is a compatibility wrapper over #strong[nelson.unittest.makeref];.

 test file must have \<--CHECK REF--\> tag.


== See also

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:nelson_unittest>)[nelson.unittest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
