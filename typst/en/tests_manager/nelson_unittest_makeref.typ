#import "nelson_help.typ": *

= nelson.unittest.makeref <tests_manager:nelson_unittest_makeref>

Create a reference file for a test.

== Syntax

- #raw("status = nelson.unittest.makeref(filename)");

== Input argument

/ filename: test file used to create the reference output.

== Output argument

/ status: true when the reference file was created successfully.

== Description

#strong[nelson.unittest.makeref]; creates the reference file used by reference-based tests. #strong[test\_makeref]; is the compatibility alias.


== See also

#nlink(<tests_manager:test_makeref>)[test\_makeref];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.
