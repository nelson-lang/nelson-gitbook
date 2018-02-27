



fileparts


fileparts

Returns the path, filename and extension of a file path.

## Syntax

- [p, f, e] = fileparts(fullpath)
- p = fileparts(fullpath, 'path')
- f = fileparts(fullpath, 'filename')
- e = fileparts(fullpath, 'extension')

## Input argument

 - fullpath - a string: file or directory name.

## Output argument

 - p - a string: path of the directory fullpath.
 - f - a string: file name without extension of fullpath.
 - e - a string: extension name of fullpath.

## Description


  <p><b>[p ,f, e] = fileparts(fullpath)</b> splits in its three parts: path, filename, extension including the dot.</p>


## Example

```Nelson
[p, f, e] = fileparts([nelsonroot(), '/etc/finish.nls'])
p = fileparts([nelsonroot(), '/etc/finish.nls'], 'path')
f = fileparts([nelsonroot(), '/etc/finish.nls'], 'filename')
e = fileparts([nelsonroot(), '/etc/finish.nls'], 'extension')
```

## See also

isdir.md isdir, isfile.md isfile, pathsep.md pathsep, filesep.md filesep.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



