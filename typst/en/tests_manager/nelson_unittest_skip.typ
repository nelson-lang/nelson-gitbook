#import "nelson_help.typ": *

= nelson.unittest.skip <tests_manager:nelson_unittest_skip>

Skip the current test.

== Syntax

- #raw("nelson.unittest.skip()");
- #raw("nelson.unittest.skip(reason)");
- #raw("nelson.unittest.skip(condition, reason)");

== Description

#strong[nelson.unittest.skip]; marks the current test as skipped. #strong[skip\_testsuite]; is the compatibility alias.


== See also

#nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];, #nlink(<tests_manager:nelson_unittest_assume>)[nelson.unittest.assume];.
