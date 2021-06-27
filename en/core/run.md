

# run

Executes a script file (.m).

## Syntax

- run(script_file)
- run(script_file, 'nocatch')
- bsuccess = run(script_file, 'errcatch')

## Input argument

 - script_file - a string: path of a script
 - 'nocatch' - a string: default option (no error catch)
 - 'errcatch' - a string: error catched

## Output argument

 - bsuccess - a logical: true if no error detected during script execution

## Description


  <p><b>run(script_file)</b> executes a Nelson's script file (.m file extension).</p>


## Examples

Creates two .m in temp directory to use as example:
```matlab
fd = fopen([tempdir(), 'example_run_ok.m'], 'wt');
fprintf(fd, ['A = 1;', char(10)]);
fprintf(fd, ['B = 2;', char(10)]);
fprintf(fd, ['C = A + B', char(10)]);
fclose(fd);

fd = fopen([tempdir(), 'example_run_not_ok.m'], 'wt');
fprintf(fd, ['AA = 1;', char(10)]);
fprintf(fd, ['CC = AA + BB', char(10)]);
fclose(fd);
```
run a script without error.
```matlab
run([tempdir(), 'example_run_ok.m']);
```
run a script and catch error (no error).
```matlab
bsuccess = run([tempdir(), 'example_run_ok.m'], 'errcatch')
```
run a script and catch error (with error).
```matlab
bsuccess = run([tempdir(), 'example_run_not_ok.m'], 'errcatch')
```
run a script and no catch error.
```matlab
run([tempdir(), 'example_run_not_ok.m'], 'nocatch');
```

## See also

[execstr](execstr.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



