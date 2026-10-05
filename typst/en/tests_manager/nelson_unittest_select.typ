#import "nelson_help.typ": *

= nelson.unittest.select <tests_manager:nelson_unittest_select>

Filter a discovered test suite.

== Syntax

- #raw("selected = nelson.unittest.select(suite, Name, Value)");

== Input argument

/ suite: TestSuite returned by nelson.unittest.discover.
/ Name, Value: selection options: Name, Module, File, Kind, Tags, ExcludeTags, Match, and Exclude.

== Output argument

/ selected: filtered TestSuite preserving filtered-count metadata.

== Description

#strong[nelson.unittest.select]; applies selection filters without executing tests.

 #strong[Kind]; accepts #strong[test];, #strong[bug];, #strong[bench];, #strong[all\_tests];, and #strong[all];.


== Example

``````matlab

suite = nelson.unittest.select(suite, 'Tags', {'fast'}, 'ExcludeTags', {'gui'});

``````


== See also

#nlink(<tests_manager:nelson_unittest_discover>)[nelson.unittest.discover];, #nlink(<tests_manager:nelson_unittest_plan>)[nelson.unittest.plan];.
