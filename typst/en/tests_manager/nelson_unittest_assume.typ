#import "nelson_help.typ": *

= nelson.unittest.assume <tests_manager:nelson_unittest_assume>

Skip a test when a runtime assumption is not satisfied.

== Syntax

- #raw("nelson.unittest.assume(condition)");
- #raw("nelson.unittest.assume(condition, reason)");

== Input argument

/ condition: logical scalar that must be true to continue the current test.
/ reason: optional text explaining why the test is skipped.

== Description

#strong[nelson.unittest.assume]; marks the current test as skipped when a runtime prerequisite is false.


== Example

``````matlab
nelson.unittest.assume(ispc(), 'Requires Windows');
``````


== See also

#nlink(<tests_manager:nelson_unittest_skip>)[nelson.unittest.skip];, #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];.
