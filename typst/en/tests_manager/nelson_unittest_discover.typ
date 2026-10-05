#import "nelson_help.typ": *

= nelson.unittest.discover <tests_manager:nelson_unittest_discover>

Discover test files and return a structured suite.

== Syntax

- #raw("suite = nelson.unittest.discover(targets)");
- #raw("suite = nelson.unittest.discover(targets, Name, Value)");

== Input argument

/ targets: module name, directory, file name, or cell array of targets.
/ Name, Value: #strong[Kind]; selection option.

== Output argument

/ suite: TestSuite structure containing discovered TestCase entries.

== Description

#strong[nelson.unittest.discover]; finds #strong[test\_\*.m];, #strong[bug\_\*.m];, and #strong[bench\_\*.m]; files.

 Discovery reads file tags on every call and records stable TestCase fields such as id, module, file, name, kind, tags, mode, resources, timeout, and weight.

 For an external module, the module field comes from its module.json manifest and its root is located by the enclosing etc\/startup.m file. This also supports versioned installations, temporary package staging directories, and nested tests. Shipped modules and registered legacy modules are identified from their module roots. A directory name alone does not identify a module; files without a valid module identity have an empty module field.


== Example

``````matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');

``````


== See also

#nlink(<tests_manager:nelson_unittest>)[nelson.unittest];, #nlink(<tests_manager:nelson_unittest_select>)[nelson.unittest.select];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.
