# nelson.unittest.run

Run tests through the modern test runner.

## 📝 Syntax

- results = nelson.unittest.run(targets, Name, Value)
- results = nelson.unittest.run(plan, Name, Value)

## 📥 Input argument

- targets - module name, directory, file name, cell array of targets, TestSuite, or TestPlan.
- Name, Value - execution options: Workers, Timeout, StopOnFail, Retry, RetryOnlyOn, LogDir, Format, OutputFile, and Launcher.

## 📤 Output argument

- results - TestRunResult structure with status, summary, normalized cases, diagnostics, registry, and raw compatibility data.

## 📄 Description

<b>nelson.unittest.run</b> executes each test or bench in a supervised child process. There is no in-process execution mode for tests or benches.

Tests and benches run in separated child processes by default. A file can authorize process reuse with the <b><--REUSE PROCESS--></b> tag.

The native supervisor uses a dynamic weighted queue. The optional <b><--WEIGHT N--></b> tag gives heavier files priority without changing their stable display order.

The optional <b><--TIMEOUT N--></b> tag overrides the per-file execution timeout (in seconds) for a single file; the global <b>Timeout</b> option, when set, still takes precedence.

Results are displayed progressively in discovery order as soon as the preceding results are available. Each line includes its status and elapsed time.

If a reusable worker crashes or returns no result, the runner retries the affected test once with the isolated fallback path. A timeout is reported directly.

Without a GUI or ADV-CLI tag, the isolated launcher is <b>nelson-cli</b>, including when the parent process is graphical.

The <b>Launcher</b> option selects the graphics backend for ADV-CLI-tagged tests: <b>'default'</b> (the historical executables) or <b>'webview'</b>, which runs those tests through <b>nelson-adv-cli --webview</b>so figures are rendered by the headless web (RenderWeb) backend. CLI and GUI tags are unaffected. The selection is also read from the <b>NELSON_UNITTEST_LAUNCHER</b> environment variable, which is convenient for continuous integration.

## 💡 Example

```matlab

results = nelson.unittest.run('core', 'Workers', 4, 'Format', 'json', ...
  'OutputFile', [tempdir(), 'core.json']);

```

## 🔗 See also

[test_run](../tests_manager/test_run.md), [nelson.unittest.report](../tests_manager/nelson.unittest.report.md), [nelson.unittest.tuneWeights](../tests_manager/nelson.unittest.tuneWeights.md), [nelson.unittest.tuneReuse](../tests_manager/nelson.unittest.tuneReuse.md).
