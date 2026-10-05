#import "nelson_help.typ": *

= nelson.unittest.report <tests_manager:nelson_unittest_report>

Write test and benchmark runner reports.

== Syntax

- #raw("status = nelson.unittest.report(results, Name, Value)");

== Input argument

/ results: TestRunResult returned by nelson.unittest.run.
/ Name, Value: report options: Format, OutputFile, and Verbose. Format accepts console, json, junit, tap, and html.

== Output argument

/ status: true when the report was written successfully.

== Description

#strong[nelson.unittest.report]; writes console, JSON, JUnit XML, TAP13, or standalone HTML reports.

 JUnit reports place skipped, failure, error, stdout, and stderr nodes under each testcase.

 HTML reports are single-file artifacts with inline style and script, summary metrics, runner configuration, environment information, filters, case details, stdout, stderr, diagnostics, and embedded JSON data.

 The HTML report includes a top ten slowest tests and benches section, a compact module summary, visual module separators, sortable columns, and quick filters for failed, skipped, bench, and slow cases.

 Failed, timeout, and error cases are expanded by default. Each case detail includes a reproduction command when the test filename is available.

 Benchmark rows use the bench outcome and display the measured duration directly in the badge.

 When an HTML report is written to #strong[report.html];, a JSON sidecar #strong[report.json]; is written next to it. The HTML file remains standalone because it also embeds the JSON data.


== Example

``````matlab

nelson.unittest.report(results, 'Format', 'tap', 'OutputFile', [tempdir(), 'tests.tap']);
nelson.unittest.report(results, 'Format', 'html', 'OutputFile', [tempdir(), 'tests.html']);
% The HTML call also writes [tempdir(), 'tests.json'].

``````


== See also

#nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];, #nlink(<tests_manager:test_run>)[test\_run];.
