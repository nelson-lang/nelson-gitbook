#import "nelson_help.typ": *

= test\_run <tests_manager:test_run>

Runs tests

== Syntax

- #raw("status = test_run()");
- #raw("status = test_run([])");
- #raw("status = test_run('minimal_tests')");
- #raw("status = test_run('-stoponfail')");
- #raw("status = test_run(modules)");
- #raw("status = test_run(file_to_test)");
- #raw("status = test_run(module_name, test_name)");
- #raw("status = test_run(modules, '-stoponfail')");
- #raw("status = test_run(file_to_test, '-stoponfail')");
- #raw("status = test_run(modules, option)");
- #raw("status = test_run(file_to_test, option)");
- #raw("status = test_run('minimal_tests', '-stoponfail')");
- #raw("status = test_run('minimal_tests', option)");
- #raw("status = test_run([], '-stoponfail')");
- #raw("status = test_run([], option)");
- #raw("status = test_run(modules, file_output)");
- #raw("status = test_run(file_to_test, file_output)");
- #raw("status = test_run([], file_output)");
- #raw("status = test_run(modules, option, xunitfile)");
- #raw("status = test_run(modules, '-stoponfail', xunitfile)");
- #raw("status = test_run(modules, option, xunitfile, '-stoponfail')");

== Input argument

/ module\_name: a string or a cell of string: module name or list of modules. Cell arrays are processed in linear index order, including row and column vectors.
/ file\_to\_test: a string or a cell of string: file to test or list of filenames. Cell arrays are processed in linear index order, including row and column vectors.
/ test\_name: a string or a cell of string: test file name in the module tests directory. The .m extension is optional.
/ options: a string or a cell of string: supported options 'all', 'all\_tests', 'unitary\_tests', 'nonreg\_tests' or 'benchs'. The default is 'all\_tests'.
/ xunitfile: a string: filename to export results as a .xml or .json file compatible with Xunit format.
/ '-stoponfail': a string: stop tests execution at first 'fails' detected.
/ 'Launcher', value: an optional name\/value pair: #strong['default']; (default) or #strong['webview']; to run ADV-CLI-tagged tests through #strong[nelson-adv-cli --webview]; (web\/RenderWeb figure backend).

== Output argument

/ status: a logical: true if tests pass.

== Description

#strong[test\_run]; searches 'test\_\*.m' and 'bug\_\*.m' files by default, executes them, and displays a report about success or failures.

 Use the explicit #strong[all]; option to include 'bench\_\*.m' files, or use #strong[bench\_run]; to execute benchmarks separately.

 #strong[test\_run]; is a compatibility wrapper over #strong[nelson.unittest.run];.

 The optional #strong['Launcher', 'webview']; pair may be placed anywhere in the argument list. It routes ADV-CLI-tagged tests to #strong[nelson-adv-cli --webview]; so figures use the headless web (RenderWeb) backend; CLI and GUI tags are unchanged. The same choice can be set with the #strong[NELSON\_UNITTEST\_LAUNCHER]; environment variable.

 Each test or bench is executed by a supervised child process. Process reuse requires the explicit #strong[\<--REUSE PROCESS--\>]; tag.

 That enables the current command to continue, even if the test as created an unstable environment.

 It also enables the tests to be independent from one another.

 Use #strong[test\_run(module\_name, test\_name)]; to run one test file from a module tests directory.

 Some special tags can be inserted in the .m files to help the processing of the corresponding test.

 These tags are expected to be found in Nelson comments:

 #strong[\<--NOT FIXED--\>]; This test is skipped because it is a reported bug, but it is not yet fixed.

 #strong[\<--INTERACTIVE TEST--\>]; This test is skipped because it is interactive test.

 #strong[\<--CLI MODE--\>]; This test will be executed by nelson-cli executable (default).

 #strong[\<--ADV-CLI MODE--\>]; This test will be executed by nelson-adv-cli executable.

 #strong[\<--GUI MODE--\>]; This test will be executed by nelson-gui executable.

 #strong[\<--CHECK REF--\>]; This test will compare .ref available in same directory with output generated. see #strong[test\_makeref]; to generate .ref file.

 #strong[\<--ENGLISH IMPOSED--\>]; This test will be executed with the en\_US language.

 #strong[\<--WINDOWS ONLY--\>]; This test will be executed only on Windows.

 #strong[\<--MACOS ONLY--\>]; This test will be executed only on Macos.

 #strong[\<--UNIX ONLY--\>]; This test will be executed only on Unix.

 #strong[\<--WITH DISPLAY--\>]; This test will be executed only if a display output is available.

 #strong[\<--RELEASE ONLY--\>]; This test will be executed only if nelson is an release (not in debug mode).

 #strong[\<--EXCEL REQUIRED--\>]; This test will be executed only if excel is detected (on Windows).

 #strong[\<--MPI MODE--\>]; This test will be executed in MPI mode.

 #strong[\<--AUDIO INPUT REQUIRED--\>]; This test will be executed if an audio input is available.

 #strong[\<--AUDIO OUTPUT REQUIRED--\>]; This test will be executed if an audio output is available.

 #strong[\<--AUDIO REQUIRED--\>]; This test requires the audio module (its file functions such as audioread and audiowrite) but no physical audio device. The module is loaded even in a test that belongs to another module; the test is not skipped when no audio device is present.

 #strong[\<--C\/C++ COMPILER REQUIRED--\>]; This test will be executed if an C\/C++ compiler is available.

 #strong[\<--INDEX 64 BIT REQUIRED--\>]; This test will be executed if 64 bit index is available.

 #strong[\<--NO USER MODULES--\>]; This test will be executed without load user modules.

 #strong[\<--IPC REQUIRED--\>]; This test will be executed if IPC is available.

 #strong[\<--SEQUENTIAL TEST REQUIRED--\>]; This test will be executed sequentially (1 worker).

 #strong[\<--NATIVE ARCHITECTURE TEST REQUIRED--\>]; This test will be executed if application's build and architecture are same.

 #strong[\<--FILE WATCHER REQUIRED--\>];This test will be executed if file watcher is available.

 #strong[\<--PYTHON ENVIRONMENT REQUIRED--\>]; This test will be executed if python environment is available and configured.

 #strong[\<--JULIA ENVIRONMENT REQUIRED--\>]; This test will be executed if julia environment is available and configured.

 #strong[\<--REUSE PROCESS--\>]; This test or bench authorizes the runner to reuse the same child process for several tagged files.

 #strong[nelson.unittest.tuneReuse]; audits these tags with isolated and reused native campaigns. Adding tags requires the explicit #strong[AllowAdd]; option; source changes require #strong[Apply];.

 #strong[\<--WEIGHT N--\>]; Positive scheduling weight. Heavier files are started first by the dynamic worker queue.

 #strong[nelson.unittest.tuneWeights]; can propose or explicitly update these tags from measured results.

 #strong[\<--TIMEOUT N--\>]; Positive per-file execution timeout, in seconds, that overrides the default timer for this file only. It does not change the scheduling priority (that is #strong[\<--WEIGHT N--\>];). Use it for a legitimately long test or bench that would otherwise be killed by the default timer. The global #strong[Timeout]; run option, when set, still takes precedence over the tag.

 Test can also skipped dynamically using #strong[skip\_testsuite]; function.

 To avoid to block the application, tests have an execution timer of 2 minutes and the benchs have a timer of 6 minutes, unless a #strong[\<--TIMEOUT N--\>]; tag sets a per-file value.

 #strong[test\_run]; uses workers to execute tests. Untagged files are executed in separated child processes; files tagged with #strong[\<--REUSE PROCESS--\>]; can share a child process.

 Results are displayed progressively in a stable order. Each result line contains a status icon and its elapsed time using the #strong[🟢\[ 9.800s\]]; format.

 Tests with #strong[\<--SEQUENTIAL TEST REQUIRED--\>]; are evaluated last.

 Benchs use one worker when five threads or fewer are available, and two workers otherwise.

 For the namespaced API, use #strong[nelson.unittest.discover];, #strong[nelson.unittest.select];, #strong[nelson.unittest.plan];, #strong[nelson.unittest.run];, #strong[nelson.unittest.tuneWeights];, #strong[nelson.unittest.tuneReuse];, and #strong[nelson.unittest.report];.

 The internal test file executor is private and is not documented as a user function.


== Examples

``````matlab
test_run('string');
``````

``````matlab
test_run('string', 'test_strfind')
``````

``````matlab
test_run({'string', 'time'})
``````

``````matlab
test_run({'string', 'time'}, 'all', [tempdir(), 'tests.xml'])
``````

Calibrate process-reuse tags and scheduling weights for tests and benches in every module. An empty target selects all modules. These commands update source files.

``````matlab

nelson.unittest.tuneReuse([], ...
  'Trials', 3, 'AllowAdd', true, 'Apply', true);
nelson.unittest.tuneWeights([], ...
  'Apply', true, 'Workers', 1);

``````


== See also

#nlink(<tests_manager:bench_run>)[bench\_run];, #nlink(<assert_functions:assert>)[assert];, #nlink(<tests_manager:test_makeref>)[test\_makeref];, #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];, #nlink(<tests_manager:nelson_unittest>)[nelson.unittest];, #nlink(<tests_manager:nelson_unittest_tuneReuse>)[nelson.unittest.tuneReuse];, #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.3.0], [PYTHON ENVIRONMENT REQUIRED tag added],
  [1.4.0], [skip\_testsuite function reference],
  [1.12.0], [JULIA ENVIRONMENT REQUIRED tag added],
)

// Author: Allan CORNET
