# findcmake

find CMake path.

## Syntax

- [status, cmake_path] = findcmake()

## Output argument

- status - a logical.
- cmake_path - a string: path of CMake or ''.

## Description

  <p>find CMake path.</p>
  <p>CMake is used internaly to generate makefiles used to build dynamic libraries on fly.</p>

## See also

[cmake](cmake.md).

## Example

```matlab
[status, cmake_path] = findcmake()
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
