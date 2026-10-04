# test_run

Runs tests

## 📝 Syntax

- status = test_run()
- status = test_run([])
- status = test_run('minimal_tests')
- status = test_run('-stoponfail')
- status = test_run(modules)
- status = test_run(file_to_test)
- status = test_run(module_name, test_name)
- status = test_run(modules, '-stoponfail')
- status = test_run(file_to_test, '-stoponfail')
- status = test_run(modules, option)
- status = test_run(file_to_test, option)
- status = test_run('minimal_tests', '-stoponfail')
- status = test_run('minimal_tests', option)
- status = test_run([], '-stoponfail')
- status = test_run([], option)
- status = test_run(modules, file_output)
- status = test_run(file_to_test, file_output)
- status = test_run([], file_output)
- status = test_run(modules, option, xunitfile)
- status = test_run(modules, '-stoponfail', xunitfile)
- status = test_run(modules, option, xunitfile, '-stoponfail')

## 📥 Input argument

- module_name - a string or a cell of string: module name or list of modules. Cell arrays are processed in linear index order, including row and column vectors.
- file_to_test - a string or a cell of string: file to test or list of filenames. Cell arrays are processed in linear index order, including row and column vectors.
- test_name - a string or a cell of string: test file name in the module tests directory. The .m extension is optional.
- options - a string or a cell of string: supported options 'all', 'all_tests', 'unitary_tests', 'nonreg_tests' or 'benchs'. The default is 'all_tests'.
- xunitfile - a string: filename to export results as a .xml or .json file compatible with Xunit format.
- '-stoponfail' - a string: stop tests execution at first 'fails' detected.
- 'Launcher', value - an optional name/value pair: <b>'default'</b> (default) or <b>'webview'</b> to run ADV-CLI-tagged tests through <b>nelson-adv-cli --webview</b> (web/RenderWeb figure backend).

## 📤 Output argument

- status - a logical: true if tests pass.

## 📄 Description

<b>test_run</b> searches 'test\_\*.m' and 'bug\_\*.m' files by default, executes them, and displays a report about success or failures.

Use the explicit <b>all</b> option to include 'bench\_\*.m' files, or use <b>bench_run</b>to execute benchmarks separately.

<b>test_run</b> is a compatibility wrapper over <b>nelson.unittest.run</b>.

The optional <b>'Launcher', 'webview'</b> pair may be placed anywhere in the argument list. It routes ADV-CLI-tagged tests to <b>nelson-adv-cli --webview</b> so figures use the headless web (RenderWeb) backend; CLI and GUI tags are unchanged. The same choice can be set with the <b>NELSON_UNITTEST_LAUNCHER</b> environment variable.

Each test or bench is executed by a supervised child process. Process reuse requires the explicit <b><--REUSE PROCESS--></b> tag.

That enables the current command to continue, even if the test as created an unstable environment.

It also enables the tests to be independent from one another.

Use <b>test_run(module_name, test_name)</b> to run one test file from a module tests directory.

Some special tags can be inserted in the .m files to help the processing of the corresponding test.

These tags are expected to be found in Nelson comments:

<b>
        <--NOT FIXED-->
      </b> This test is skipped because it is a reported bug, but it is not yet fixed.

<b>
        <--INTERACTIVE TEST-->
      </b> This test is skipped because it is interactive test.

<b>
        <--CLI MODE-->
      </b> This test will be executed by nelson-cli executable (default).

<b>
        <--ADV-CLI MODE-->
      </b> This test will be executed by nelson-adv-cli executable.

<b>
        <--GUI MODE-->
      </b> This test will be executed by nelson-gui executable.

<b>
        <--CHECK REF-->
      </b> This test will compare .ref available in same directory with output generated. see <b>test\_makeref</b> to generate .ref file.

<b>
        <--ENGLISH IMPOSED-->
      </b> This test will be executed with the en\_US language.

<b>
        <--WINDOWS ONLY-->
      </b> This test will be executed only on Windows.

<b>
        <--MACOS ONLY-->
      </b> This test will be executed only on Macos.

<b>
        <--UNIX ONLY-->
      </b> This test will be executed only on Unix.

<b>
        <--WITH DISPLAY-->
      </b> This test will be executed only if a display output is available.

<b>
        <--RELEASE ONLY-->
      </b> This test will be executed only if nelson is an release (not in debug mode).

<b>
        <--EXCEL REQUIRED-->
      </b> This test will be executed only if excel is detected (on Windows).

<b>
        <--MPI MODE-->
      </b> This test will be executed in MPI mode.

<b>
        <--AUDIO INPUT REQUIRED-->
      </b> This test will be executed if an audio input is available.

<b>
        <--AUDIO OUTPUT REQUIRED-->
      </b> This test will be executed if an audio output is available.

<b>
        <--AUDIO REQUIRED-->
      </b> This test requires the audio module (its file functions such as audioread and audiowrite) but no physical audio device. The module is loaded even in a test that belongs to another module; the test is not skipped when no audio device is present.

<b>
        <--C/C++ COMPILER REQUIRED-->
      </b> This test will be executed if an C/C++ compiler is available.

<b>
        <--INDEX 64 BIT REQUIRED-->
      </b> This test will be executed if 64 bit index is available.

<b>
        <--NO USER MODULES-->
      </b> This test will be executed without load user modules.

<b>
        <--IPC REQUIRED-->
      </b> This test will be executed if IPC is available.

<b>
        <--SEQUENTIAL TEST REQUIRED-->
      </b> This test will be executed sequentially (1 worker).

<b>
        <--NATIVE ARCHITECTURE TEST REQUIRED-->
      </b> This test will be executed if application's build and architecture are same.

<b>
        <--FILE WATCHER REQUIRED-->
      </b>This test will be executed if file watcher is available.

<b>
        <--PYTHON ENVIRONMENT REQUIRED-->
      </b> This test will be executed if python environment is available and configured.

<b>
        <--JULIA ENVIRONMENT REQUIRED-->
      </b> This test will be executed if julia environment is available and configured.

<b>
        <--REUSE PROCESS-->
      </b> This test or bench authorizes the runner to reuse the same child process for several tagged files.

<b>nelson.unittest.tuneReuse</b> audits these tags with isolated and reused native campaigns. Adding tags requires the explicit <b>AllowAdd</b> option; source changes require <b>Apply</b>.

<b>
        <--WEIGHT N-->
      </b> Positive scheduling weight. Heavier files are started first by the dynamic worker queue.

<b>nelson.unittest.tuneWeights</b> can propose or explicitly update these tags from measured results.

<b>
        <--TIMEOUT N-->
      </b> Positive per-file execution timeout, in seconds, that overrides the default timer for this file only. It does not change the scheduling priority (that is <b><--WEIGHT N--></b>). Use it for a legitimately long test or bench that would otherwise be killed by the default timer. The global <b>Timeout</b> run option, when set, still takes precedence over the tag.

Test can also skipped dynamically using <b>skip_testsuite</b> function.

To avoid to block the application, tests have an execution timer of 2 minutes and the benchs have a timer of 6 minutes, unless a <b><--TIMEOUT N--></b> tag sets a per-file value.

<b>test_run</b> uses workers to execute tests. Untagged files are executed in separated child processes; files tagged with <b><--REUSE PROCESS--></b> can share a child process.

Results are displayed progressively in a stable order. Each result line contains a status icon and its elapsed time using the <b>🟢[ 9.800s]</b> format.

Tests with <b>
<--SEQUENTIAL TEST REQUIRED-->
</b> are evaluated last.

Benchs use one worker when five threads or fewer are available, and two workers otherwise.

For the namespaced API, use <b>nelson.unittest.discover</b>, <b>nelson.unittest.select</b>, <b>nelson.unittest.plan</b>, <b>nelson.unittest.run</b>, <b>nelson.unittest.tuneWeights</b>, <b>nelson.unittest.tuneReuse</b>, and <b>nelson.unittest.report</b>.

The internal test file executor is private and is not documented as a user function.

## 💡 Examples

```matlab
test_run('string');
```

```matlab
test_run('string', 'test_strfind')
```

```matlab
test_run({'string', 'time'})
```

```matlab
test_run({'string', 'time'}, 'all', [tempdir(), 'tests.xml'])
```

Calibrate process-reuse tags and scheduling weights for tests and benches in
every module. An empty target selects all modules. These commands update source files.

```matlab

nelson.unittest.tuneReuse([], ...
  'Trials', 3, 'AllowAdd', true, 'Apply', true);
nelson.unittest.tuneWeights([], ...
  'Apply', true, 'Workers', 1);

```

## 🔗 See also

[bench_run](../tests_manager/bench_run.md), [assert](../assert_functions/assert.md), [test_makeref](../tests_manager/test_makeref.md), [skip_testsuite](../tests_manager/skip_testsuite.md), [nelson.unittest](../tests_manager/nelson_unittest.md), [nelson.unittest.tuneReuse](../tests_manager/nelson.unittest.tuneReuse.md), [nelson.unittest.tuneWeights](../tests_manager/nelson.unittest.tuneWeights.md).

## 🕔 History

| Version | 📄 Description                        |
| ------- | ------------------------------------- |
| 1.0.0   | initial version                       |
| 1.3.0   | PYTHON ENVIRONMENT REQUIRED tag added |
| 1.4.0   | skip_testsuite function reference     |
| 1.12.0  | JULIA ENVIRONMENT REQUIRED tag added  |

<!--
## 👤 Author

Allan CORNET
-->
