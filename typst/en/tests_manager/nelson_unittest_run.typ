#import "nelson_help.typ": *

= nelson.unittest.run <tests_manager:nelson_unittest_run>

Run tests through the modern test runner.

== Syntax

- #raw("results = nelson.unittest.run(targets, Name, Value)");
- #raw("results = nelson.unittest.run(plan, Name, Value)");

== Input argument

/ targets: module name, directory, file name, cell array of targets, TestSuite, or TestPlan.
/ Name, Value: execution options: Workers, Timeout, StopOnFail, Retry, RetryOnlyOn, LogDir, Format, OutputFile, and Launcher.

== Output argument

/ results: TestRunResult structure with status, summary, normalized cases, diagnostics, registry, and raw compatibility data.

== Description

#strong[nelson.unittest.run]; executes each test or bench in a supervised child process. There is no in-process execution mode for tests or benches.

 Tests and benches run in separated child processes by default. A file can authorize process reuse with the #strong[\<--REUSE PROCESS--\>]; tag.

 The native supervisor uses a dynamic weighted queue. The optional #strong[\<--WEIGHT N--\>]; tag gives heavier files priority without changing their stable display order.

 The optional #strong[\<--TIMEOUT N--\>]; tag overrides the per-file execution timeout (in seconds) for a single file; the global #strong[Timeout]; option, when set, still takes precedence.

 Results are displayed progressively in discovery order as soon as the preceding results are available. Each line includes its status and elapsed time.

 If a reusable worker crashes or returns no result, the runner retries the affected test once with the isolated fallback path. A timeout is reported directly.

 Without a GUI or ADV-CLI tag, the isolated launcher is #strong[nelson-cli];, including when the parent process is graphical.

 The #strong[Launcher]; option selects the graphics backend for ADV-CLI-tagged tests: #strong['default']; (the historical executables) or #strong['webview'];, which runs those tests through #strong[nelson-adv-cli --webview]; so figures are rendered by the headless web (RenderWeb) backend. CLI and GUI tags are unaffected. The selection is also read from the #strong[NELSON\_UNITTEST\_LAUNCHER]; environment variable, which is convenient for continuous integration.


== Example

``````matlab

results = nelson.unittest.run('core', 'Workers', 4, 'Format', 'json', ...
  'OutputFile', [tempdir(), 'core.json']);

``````


== See also

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:nelson_unittest_report>)[nelson.unittest.report];, #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights];, #nlink(<tests_manager:nelson_unittest_tuneReuse>)[nelson.unittest.tuneReuse];.
