

# test_run

Runs tests

## Syntax

- status = test_run()
- status = test_run(module_name)
- status = test_run(module_name, options)
- status = test_run(module_name, options, xunitfile)

## Input argument

 - module_name - a string or a cell of string: module name or list of modules or filename.
 - options - a string or a cell of string: supported options 'all', 'all_tests', 'unitary_tests', 'nonreg_tests' or 'benchs'.
 - xunitfile - a string: filename to export results as a .xml or .json file compatible with Xunit format.

## Output argument

 - status - a logical: true if tests pass.

## Description


  <p><b>test_run</b> function searchs 'test_*.nls', 'bug_*.nls', and 'bench_*.nls' files, executes them, and displays a report about success or failures.</p>
  <p>Each test or bench is executed in a separated process using the 'unix' command.</p>
  <p>That enables the current command to continue, even if the test as created an unstable environment.</p>
  <p>It also enables the tests to be independent from one another.</p>
  <p>Some special tags can be inserted in the .nls files to help the processing of the corresponding test.</p>
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
  <p/>
  <p>To avoid to block the application, tests have an execution timer of 50 seconds and the benchs have a timer of 500 seconds.</p>


## Examples

```matlab
test_run('string');
```
```matlab
test_run({'string', 'time'})
```
```matlab
test_run({'string', 'time'}, 'all', [tempdir(), '/tests.xml'])
```

## See also

[assert](../assert_functions/assert.md), [test_makeref](test_makeref.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



