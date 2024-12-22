# path

Modify or display Nelson’s load path.

## Syntax

- path()
- p = path()
- path(dirname)
- path(path(), dirname)
- path(dirname, path())

## Input argument

- dirname - a directory name or an suite of directory names using pathsep()

## Output argument

- p - string: the specified paths

## Description

  <p><b>path</b> modifies or displays Nelson’s load path.</p>

## Example

```matlab
path
p = path()
path(p, tempdir())
path
path(p)
```

## See also

[rmpath](rmpath.md), [addpath](addpath.md), [rehash](rehash.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
