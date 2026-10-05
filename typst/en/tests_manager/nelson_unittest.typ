#import "nelson_help.typ": *

= nelson.unittest <tests_manager:nelson_unittest>

Modern test runner namespace

== Syntax

- #raw("suite = nelson.unittest.discover(targets)");
- #raw("suite = nelson.unittest.select(suite, Name, Value)");
- #raw("plan = nelson.unittest.plan(suite, Name, Value)");
- #raw("results = nelson.unittest.run(targets, Name, Value)");
- #raw("results = nelson.unittest.run(plan, Name, Value)");
- #raw("proposal = nelson.unittest.tuneWeights(results, Name, Value)");
- #raw("proposal = nelson.unittest.tuneReuse(targets, Name, Value)");
- #raw("status = nelson.unittest.report(results, Name, Value)");
- #raw("nelson.unittest.assume(condition, reason)");

== Input argument

/ targets: a module name, file name, directory, or cell array of targets.
/ Name, Value: selection, planning, execution, and reporting options.

== Output argument

/ suite: a TestSuite structure containing discovered TestCase entries.
/ plan: a TestPlan structure containing selected tests, shard information, workers, and resource groups.
/ results: a TestRunResult structure containing summary, normalized cases, registry information, and raw compatibility data.

== Description

The #strong[nelson.unittest]; namespace provides the modern test runner API.

 The runner separates discovery, selection, planning, execution, and reporting while preserving compatibility wrappers such as #strong[test\_run];, #strong[test\_makeref];, and #strong[skip\_testsuite];.

 #strong[test\_run];, #strong[test\_makeref];, and #strong[skip\_testsuite]; are compatibility entry points implemented on top of this namespace.

 Runner internals are private implementation details and are not part of the user API.

 Each test and bench is executed in a child process supervised by the runner. There is no in-process execution mode for tests or benches.

 The native process supervisor captures output, applies timeouts, and returns diagnostics such as command, process id, timeout, reason, and job id.

 Normalized cases expose these native details in #strong[results.cases(k).diagnostics];. The diagnostics structure contains #strong[kind];, #strong[index];, #strong[metadata];, #strong[job\_id];, #strong[pid];, #strong[timeout];, #strong[reason];, #strong[executable];, and #strong[process\_arguments];.

 Supported selection options include #strong[Name];, #strong[Module];, #strong[File];, #strong[Kind];, #strong[Tags];, #strong[ExcludeTags];, #strong[Match];, and #strong[Exclude];.

 #strong[Kind]; accepts #strong[test];, #strong[bug];, #strong[bench];, #strong[all\_tests];, and #strong[all];.

 Supported execution options include #strong[Workers];, #strong[Timeout];, #strong[StopOnFail];, #strong[Retry];, #strong[RetryOnlyOn];, #strong[Shuffle];, #strong[Seed];, #strong[ShardIndex];, and #strong[ShardCount];.

 Process reuse is explicit. Test and bench files without the #strong[\<--REUSE PROCESS--\>]; tag run in separated child processes. Tagged files can reuse the same child process when their mode and resources allow it.

 The native supervisor schedules files through a dynamic weighted queue. Use #strong[\<--WEIGHT N--\>]; for an explicit positive scheduling weight.

 #strong[nelson.unittest.tuneWeights]; can derive and explicitly apply these source-controlled weights from a TestRunResult. It does not use a duration cache and performs a dry run by default.

 #strong[nelson.unittest.tuneReuse]; can audit existing reuse tags or explicitly propose additions. It uses isolated and reused native campaigns with deterministic orders, does not use a cache, and performs a dry run by default.

 If a tagged reusable worker crashes or returns no result, the runner retries the affected file once with the isolated fallback path. Timeouts are reported directly.

 Discovery always reads current file metadata and tags. Test results are progressively displayed in a stable order with an elapsed time on every line.

 #strong[LogDir]; writes one JSON log file per normalized test case when requested.

 Supported report formats are #strong[console];, #strong[json];, #strong[junit];, #strong[tap];, and #strong[html];. JUnit output is XML, TAP output follows TAP13, and HTML output is a standalone single-file report.

 HTML reports include slowest case and module summaries, sortable case tables, quick filters, reproduction commands, embedded JSON data, and a JSON sidecar next to the HTML file.


== Example

``````matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');
suite = nelson.unittest.select(suite, 'Match', 'strfind');
plan = nelson.unittest.plan(suite, 'Workers', 1);
results = nelson.unittest.run(plan, 'Format', 'json', 'OutputFile', [tempdir(), 'tests.json']);
proposal = nelson.unittest.tuneWeights(results);
reuseProposal = nelson.unittest.tuneReuse('string');
nelson.unittest.report(results, 'Format', 'tap', 'OutputFile', [tempdir(), 'tests.tap']);
nelson.unittest.report(results, 'Format', 'html', 'OutputFile', [tempdir(), 'tests.html']);

``````


== See also

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:test_makeref>)[test\_makeref];, #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];, #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights];, #nlink(<tests_manager:nelson_unittest_tuneReuse>)[nelson.unittest.tuneReuse];.
