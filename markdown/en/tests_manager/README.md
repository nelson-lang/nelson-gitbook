# Tests framework for Nelson


    
The Test Manager module in Nelson provides tools for automated testing of code, enabling users to
      validate functionality, ensure correctness, and manage test cases efficiently.

    
This module supports creating reference outputs, running test suites, and conditionally skipping tests.

  

## Functions

- [bench_run](bench_run.md) - Run benchmarks
- [nelson.unittest](nelson_unittest.md) - Modern test runner namespace
- [nelson.unittest.assume](nelson_unittest_assume.md) - Skip a test when a runtime assumption is not satisfied.
- [nelson.unittest.discover](nelson_unittest_discover.md) - Discover test files and return a structured suite.
- [nelson.unittest.makeref](nelson_unittest_makeref.md) - Create a reference file for a test.
- [nelson.unittest.plan](nelson_unittest_plan.md) - Create an execution plan for a test suite.
- [nelson.unittest.report](nelson_unittest_report.md) - Write test and benchmark runner reports.
- [nelson.unittest.run](nelson_unittest_run.md) - Run tests through the modern test runner.
- [nelson.unittest.select](nelson_unittest_select.md) - Filter a discovered test suite.
- [nelson.unittest.skip](nelson_unittest_skip.md) - Skip the current test.
- [nelson.unittest.tuneReuse](nelson_unittest_tuneReuse.md) - Calibrate explicit child-process reuse for tests and benches.
- [nelson.unittest.tuneWeights](nelson_unittest_tuneWeights.md) - Calibrate scheduling weights from measured test durations.
- [test_makeref](test_makeref.md) - Creates a '.ref' file for a test
- [test_run](test_run.md) - Runs tests
- [skip_testsuite](test_skip_testsuite.md) - Skip test suite on condition

