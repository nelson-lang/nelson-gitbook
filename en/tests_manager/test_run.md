

# test_run

Runs tests

## Syntax

- status = test_run()
- status = test_run([])
- status = test_run('minimal_tests')
- status = test_run('-stoponfail')
- status = test_run(modules)
- status = test_run(file_to_test)
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

## Input argument

 - module_name - a string or a cell of string: module name or list of modules.
 - file_to_test - a string or a cell of string: file to test or list of filenames.
 - options - a string or a cell of string: supported options 'all', 'all_tests', 'unitary_tests', 'nonreg_tests' or 'benchs'.
 - xunitfile - a string: filename to export results as a .xml or .json file compatible with Xunit format.
 - '-stoponfail' - a string: stop tests execution at first 'fails' detected.

## Output argument

 - status - a logical: true if tests pass.

## Description


  <p><b>test_run</b> function searchs 'test_*.m', 'bug_*.m', and 'bench_*.m' files, executes them, and displays a report about success or failures.</p>
  <p>Each test or bench is executed in a separated process using the 'unix' command.</p>
  <p>That enables the current command to continue, even if the test as created an unstable environment.</p>
  <p>It also enables the tests to be independent from one another.</p>
  <p>Some special tags can be inserted in the .m files to help the processing of the corresponding test.</p>
  <p>These tags are expected to be found in Nelson comments:</p>
  <p><b>&lt;--NOT FIXED--&gt;</b> This test is skipped because it is a reported bug, but it is not yet fixed. </p>
  <p><b>&lt;--INTERACTIVE TEST--&gt;</b> This test is skipped because it is interactive test.</p>
  <p><b>&lt;--CLI MODE--&gt;</b> This test will be executed by nelson-cli executable (default).</p>
  <p><b>&lt;--ADV-CLI MODE--&gt;</b> This test will be executed by nelson-adv-cli executable.</p>
  <p><b>&lt;--GUI MODE--&gt;</b> This test will be executed by nelson-gui executable.</p>
  <p><b>&lt;--CHECK REF--&gt;</b> This test will compare .ref available in same directory with output generated. see <b>test_makeref</b> to generate .ref file.</p>
  <p><b>&lt;--ENGLISH IMPOSED--&gt;</b> This test will be executed with the en_US language.</p>
  <p><b>&lt;--WINDOWS ONLY--&gt;</b> This test will be executed only on Windows.</p>
  <p><b>&lt;--MACOS ONLY--&gt;</b>  This test will be executed only on Macos.</p>
  <p><b>&lt;--UNIX ONLY--&gt;</b>  This test will be executed only on Unix.</p>
  <p><b>&lt;--WITH DISPLAY--&gt;</b> This test will be executed only if a display output is available.</p>
  <p><b>&lt;--RELEASE ONLY--&gt;</b> This test will be executed only if nelson is an release (not in debug mode).</p>
  <p><b>&lt;--EXCEL REQUIRED--&gt;</b> This test will be executed only if excel is detected (on Windows).</p>
  <p><b>&lt;--MPI MODE--&gt;</b> This test will be executed in MPI mode.</p>
  <p><b>&lt;--AUDIO INPUT REQUIRED--&gt;</b> This test will be executed if an audio input is available.</p>
  <p><b>&lt;--AUDIO OUTPUT REQUIRED--&gt;</b> This test will be executed if an audio output is available.</p>
  <p><b>&lt;--C/C++ COMPILER REQUIRED--&gt;</b> This test will be executed if an C/C++ compiler is available.</p>
  <p><b>&lt;--INDEX 64 BIT REQUIRED--&gt;</b> This test will be executed if 64 bit index is available.</p>
  <p><b>&lt;--NO USER MODULES--&gt;</b> This test will be executed without load user modules.</p>
  <p><b>&lt;--IPC REQUIRED--&gt;</b> This test will be executed if IPC is available.</p>
  <p><b>&lt;--SEQUENTIAL TEST REQUIRED--&gt;</b> This test will be executed sequentialy (1 worker).</p>
  <p><b>&lt;--NATIVE ARCHITECTURE TEST REQUIRED--&gt;</b> This test will be executed if application's build and architecture are same.</p>
  <p/>
  <p>To avoid to block the application, tests have an execution timer of 2 minutes and the benchs have a timer of 6 minutes.</p>
  <p><b>test_run</b> uses n th workers to execute and speed up tests executions.</p>
  <p>Tests with <b>&lt;--SEQUENTIAL TEST REQUIRED--&gt;</b> are evaluated last.</p>
  <p>Benchs are evaluated sequentialy.</p>


## Examples

```matlab
test_run('string');
```
```matlab
test_run({'string', 'time'})
```
```matlab
test_run({'string', 'time'}, 'all', [tempdir(), 'tests.xml'])
```

## See also

[assert](../assert_functions/assert.md), [test_makeref](test_makeref.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



