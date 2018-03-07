



run


run

Executes a script file (.nls).

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


  <p><b>run(script_file)</b> executes a Nelson's script file (.nls file extension).</p>


## Examples

Creates two .nls in temp directory to use as example:
```Nelson
fd = fopen([tempdir(), '/example_run_ok.nls'], 'wt');
fprintf(fd, ['A = 1;', char(10)]);
fprintf(fd, ['B = 2;', char(10)]);
fprintf(fd, ['C = A + B', char(10)]);
fclose(fd);

fd = fopen([tempdir(), '/example_run_not_ok.nls'], 'wt');
fprintf(fd, ['AA = 1;', char(10)]);
fprintf(fd, ['CC = AA + BB', char(10)]);
fclose(fd);
```
run a script without error.
```Nelson
run([tempdir(), '/example_run_ok.nls']);
```
run a script and catch error (no error).
```Nelson
bsuccess = run([tempdir(), '/example_run_ok.nls'], 'errcatch')
```
run a script and catch error (with error).
```Nelson
bsuccess = run([tempdir(), '/example_run_not_ok.nls'], 'errcatch')
```
run a script and no catch error.
```Nelson
run([tempdir(), '/example_run_not_ok.nls'], 'nocatch');
```

## See also

execstr.md execstr.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



