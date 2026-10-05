#import "nelson_help.typ": *

= skip\_testsuite <tests_manager:test_skip_testsuite>

Skip test suite on condition

== Syntax

- #raw("skip_testsuite()");
- #raw("skip_testsuite(reason)");
- #raw("skip_testsuite(condition)");
- #raw("skip_testsuite(condition, reason)");

== Input argument

/ condition: logical: true (default) or false
/ reason: a string: reason to skip test suite

== Description

The #strong[skip\_testsuite]; function allows you to skip a test suite based on a specified condition.

 #strong[skip\_testsuite]; is a compatibility wrapper over #strong[nelson.unittest.skip];.

 #strong[condition];: A boolean expression that determines whether to skip the test suite. If #strong[condition]; evaluates to #strong[true];, the test suite will be skipped.

 #strong[reason];: A string explaining the reason for skipping the test suite. This parameter is useful for providing context to other developers or yourself in case the test suite is skipped.


== Example

``````matlab
skip_testsuite(true, 'Test skipped')
``````


== See also

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:nelson_unittest>)[nelson.unittest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.4.0], [initial version],
)

// Author: Allan CORNET
