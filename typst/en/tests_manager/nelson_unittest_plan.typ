#import "nelson_help.typ": *

= nelson.unittest.plan <tests_manager:nelson_unittest_plan>

Create an execution plan for a test suite.

== Syntax

- #raw("plan = nelson.unittest.plan(suite)");
- #raw("plan = nelson.unittest.plan(suite, Name, Value)");

== Input argument

/ suite: TestSuite returned by nelson.unittest.discover or nelson.unittest.select.
/ Name, Value: planning options: Workers, ShardIndex, ShardCount, Shuffle, Seed, and resource policy options.

== Output argument

/ plan: TestPlan structure containing cases, workers, shard, order, and resource groups.

== Description

#strong[nelson.unittest.plan]; prepares selected cases for execution.

 Benchmarks and tests that require sequential execution are separated from tests that can run in parallel.


== Example

``````matlab

plan = nelson.unittest.plan(suite, 'Workers', 4, 'ShardIndex', 1, 'ShardCount', 2);

``````


== See also

#nlink(<tests_manager:nelson_unittest_select>)[nelson.unittest.select];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.
