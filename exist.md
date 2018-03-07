



exist


exist

Check for the existence.

## Syntax

- res = exist(name)
- res = exist(name, category)

## Input argument

 - name - a string: name of variable, function, file or directory.
 - category - a string: 'var', 'builtin', 'file', or 'dir'.

## Output argument

 - res - a integer value.

## Description


  <p><b>exists</b> checks for the existence of variable, builtin, file or directory.</p>
  <p><b>exists</b> returns:</p>
  <p><b>0</b> does not exist</p>
  <p><b>1</b> is an variable</p>
  <p><b>2</b> is a file</p>
  <p><b>5</b> is a builtin or function</p>
  <p><b>7</b> is a directory</p>


## Example

```Nelson
exist('fileread')
fileread = 3;
exist('fileread')
clear fileread
exist('fileread')
```

## See also

isbuiltin.md isbuiltin, ismacro.md ismacro, isfile.md isfile, isdir.md isdir, isvar.md isvar.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



