#import "nelson_help.typ": *

= Tests framework for Nelson

The Test Manager module in Nelson provides tools for automated testing of code, enabling users to validate functionality, ensure correctness, and manage test cases efficiently.

 This module supports creating reference outputs, running test suites, and conditionally skipping tests.

== Functions

- #nlink(<tests_manager:bench_run>)[bench\_run]: Run benchmarks
- #nlink(<tests_manager:nelson_unittest>)[nelson.unittest]: Modern test runner namespace
- #nlink(<tests_manager:nelson_unittest_assume>)[nelson.unittest.assume]: Skip a test when a runtime assumption is not satisfied.
- #nlink(<tests_manager:nelson_unittest_discover>)[nelson.unittest.discover]: Discover test files and return a structured suite.
- #nlink(<tests_manager:nelson_unittest_makeref>)[nelson.unittest.makeref]: Create a reference file for a test.
- #nlink(<tests_manager:nelson_unittest_plan>)[nelson.unittest.plan]: Create an execution plan for a test suite.
- #nlink(<tests_manager:nelson_unittest_report>)[nelson.unittest.report]: Write test and benchmark runner reports.
- #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run]: Run tests through the modern test runner.
- #nlink(<tests_manager:nelson_unittest_select>)[nelson.unittest.select]: Filter a discovered test suite.
- #nlink(<tests_manager:nelson_unittest_skip>)[nelson.unittest.skip]: Skip the current test.
- #nlink(<tests_manager:nelson_unittest_tuneReuse>)[nelson.unittest.tuneReuse]: Calibrate explicit child-process reuse for tests and benches.
- #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights]: Calibrate scheduling weights from measured test durations.
- #nlink(<tests_manager:test_makeref>)[test\_makeref]: Creates a '.ref' file for a test
- #nlink(<tests_manager:test_run>)[test\_run]: Runs tests
- #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite]: Skip test suite on condition


#nested[
#pagebreak(weak: true)
#include "bench_run.typ"
#pagebreak(weak: true)
#include "nelson_unittest.typ"
#pagebreak(weak: true)
#include "nelson_unittest_assume.typ"
#pagebreak(weak: true)
#include "nelson_unittest_discover.typ"
#pagebreak(weak: true)
#include "nelson_unittest_makeref.typ"
#pagebreak(weak: true)
#include "nelson_unittest_plan.typ"
#pagebreak(weak: true)
#include "nelson_unittest_report.typ"
#pagebreak(weak: true)
#include "nelson_unittest_run.typ"
#pagebreak(weak: true)
#include "nelson_unittest_select.typ"
#pagebreak(weak: true)
#include "nelson_unittest_skip.typ"
#pagebreak(weak: true)
#include "nelson_unittest_tuneReuse.typ"
#pagebreak(weak: true)
#include "nelson_unittest_tuneWeights.typ"
#pagebreak(weak: true)
#include "test_makeref.typ"
#pagebreak(weak: true)
#include "test_run.typ"
#pagebreak(weak: true)
#include "test_skip_testsuite.typ"
]
