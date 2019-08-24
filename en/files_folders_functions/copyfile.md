

# copyfile

Copy files or folder.

## Syntax

- copyfile(source, destination)
- [status, msg] = copyfile(source, destination)
- [status, msg] = copyfile(source, destination, 'f')

## Input argument

 - source - a string: file or directory.
 - destination - a string: file or directory.
 - 'f' or 'F' - force copy even destination is not writable.

## Output argument

 - status - a logical true or false
 - msg - a string: error message

## Description


  <p><b>copyfile(source , destination)</b> copies the file or directory , <b>source</b> (and subdirectories) to the file or directory, <b>destination</b>.</p>
  <p>If <b>source</b> is a directory, <b>destination</b> can not be a file.</p>
  <p><b>copyfile</b> replaces existing files without warning.</p>


## Example

```matlab
copyfile([nelsonroot(), '/etc/startup.nls'], [tempdir(), 'startup.nls'])
[status, msg] = copyfile([nelsonroot(), '/etc/startup.nls'], [tempdir(), 'startup.nls'])
```

## See also

[isdir](isdir.md), [rmfile](rmfile.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



