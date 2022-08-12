# addpath

Add directories to functions search path.

## Syntax

- addpath(dirname)
- addpath(dirname, ..., dirname)
- addpath(dirname, ..., dirname, '-begin')
- addpath(dirname, ..., dirname, '-end')
- addpath(dirname, ..., dirname, '-frozen')
- previous = addpath(dirname)
- previous = addpath(dirname, ..., dirname)
- previous = addpath(dirname, ..., dirname, '-begin')
- previous = addpath(dirname, ..., dirname, '-end')

## Input argument

- dirname - a string: a directory
- '-end' or '-begin' - append dirname at the end or begin of the list.
- '-frozen' - disables folder change detection for the folders being added or modified.

## Output argument

- previous - returns previous path before adding

## Description

  <p><b>addpath</b> add directories to search path.</p>
  <p>It is also possible to add lists of directory names separated by pathsep.</p>
  <p>Non-existent path will not be added and a warning will be issued.</p>
  <p>files watchers is disabled for internal modules.</p>

## Example

```matlab
path()
addpath(tempdir())
path
rmpath(tempdir())
path
```

## See also

[path](path.md), [rmpath](rmpath.md), [restoredefaultpath](restoredefaultpath.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
