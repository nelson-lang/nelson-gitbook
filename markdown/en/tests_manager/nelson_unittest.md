# nelson.unittest

Modern test runner namespace

## 📝 Syntax

- suite = nelson.unittest.discover(targets)
- suite = nelson.unittest.select(suite, Name, Value)
- plan = nelson.unittest.plan(suite, Name, Value)
- results = nelson.unittest.run(targets, Name, Value)
- results = nelson.unittest.run(plan, Name, Value)
- proposal = nelson.unittest.tuneWeights(results, Name, Value)
- proposal = nelson.unittest.tuneReuse(targets, Name, Value)
- status = nelson.unittest.report(results, Name, Value)
- nelson.unittest.assume(condition, reason)

## 📥 Input argument

- targets - a module name, file name, directory, or cell array of targets.
- Name, Value - selection, planning, execution, and reporting options.

## 📤 Output argument

- suite - a TestSuite structure containing discovered TestCase entries.
- plan - a TestPlan structure containing selected tests, shard information, workers, and resource groups.
- results - a TestRunResult structure containing summary, normalized cases, registry information, and raw compatibility data.

## 📄 Description

The <b>nelson.unittest</b> namespace provides the modern test runner API.

The runner separates discovery, selection, planning, execution, and reporting while preserving compatibility wrappers such as <b>test_run</b>, <b>test_makeref</b>, and <b>skip_testsuite</b>.

<b>test_run</b>, <b>test_makeref</b>, and <b>skip_testsuite</b> are compatibility entry points implemented on top of this namespace.

Runner internals are private implementation details and are not part of the user API.

Each test and bench is executed in a child process supervised by the runner. There is no in-process execution mode for tests or benches.

The native process supervisor captures output, applies timeouts, and returns diagnostics such as command, process id, timeout, reason, and job id.

Normalized cases expose these native details in <b>results.cases(k).diagnostics</b>. The diagnostics structure contains <b>kind</b>, <b>index</b>, <b>metadata</b>, <b>job_id</b>, <b>pid</b>, <b>timeout</b>, <b>reason</b>, <b>executable</b>, and <b>process_arguments</b>.

Supported selection options include <b>Name</b>, <b>Module</b>, <b>File</b>, <b>Kind</b>, <b>Tags</b>, <b>ExcludeTags</b>, <b>Match</b>, and <b>Exclude</b>.

<b>Kind</b> accepts <b>test</b>, <b>bug</b>, <b>bench</b>, <b>all_tests</b>, and <b>all</b>.

Supported execution options include <b>Workers</b>, <b>Timeout</b>, <b>StopOnFail</b>, <b>Retry</b>, <b>RetryOnlyOn</b>, <b>Shuffle</b>, <b>Seed</b>, <b>ShardIndex</b>, and <b>ShardCount</b>.

Process reuse is explicit. Test and bench files without the <b><--REUSE PROCESS--></b> tag run in separated child processes. Tagged files can reuse the same child process when their mode and resources allow it.

The native supervisor schedules files through a dynamic weighted queue. Use <b><--WEIGHT N--></b> for an explicit positive scheduling weight.

<b>nelson.unittest.tuneWeights</b> can derive and explicitly apply these source-controlled weights from a TestRunResult. It does not use a duration cache and performs a dry run by default.

<b>nelson.unittest.tuneReuse</b> can audit existing reuse tags or explicitly propose additions. It uses isolated and reused native campaigns with deterministic orders, does not use a cache, and performs a dry run by default.

If a tagged reusable worker crashes or returns no result, the runner retries the affected file once with the isolated fallback path. Timeouts are reported directly.

Discovery always reads current file metadata and tags. Test results are progressively displayed in a stable order with an elapsed time on every line.

<b>LogDir</b> writes one JSON log file per normalized test case when requested.

Supported report formats are <b>console</b>, <b>json</b>, <b>junit</b>, <b>tap</b>, and <b>html</b>. JUnit output is XML, TAP output follows TAP13, and HTML output is a standalone single-file report.

HTML reports include slowest case and module summaries, sortable case tables, quick filters, reproduction commands, embedded JSON data, and a JSON sidecar next to the HTML file.

## 💡 Example

```matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');
suite = nelson.unittest.select(suite, 'Match', 'strfind');
plan = nelson.unittest.plan(suite, 'Workers', 1);
results = nelson.unittest.run(plan, 'Format', 'json', 'OutputFile', [tempdir(), 'tests.json']);
proposal = nelson.unittest.tuneWeights(results);
reuseProposal = nelson.unittest.tuneReuse('string');
nelson.unittest.report(results, 'Format', 'tap', 'OutputFile', [tempdir(), 'tests.tap']);
nelson.unittest.report(results, 'Format', 'html', 'OutputFile', [tempdir(), 'tests.html']);

```

## 🔗 See also

[test_run](../tests_manager/test_run.md), [test_makeref](../tests_manager/test_makeref.md), [skip_testsuite](../tests_manager/skip_testsuite.md), [nelson.unittest.tuneWeights](../tests_manager/nelson.unittest.tuneWeights.md), [nelson.unittest.tuneReuse](../tests_manager/nelson.unittest.tuneReuse.md).
