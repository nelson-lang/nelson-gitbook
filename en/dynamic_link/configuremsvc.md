# configuremsvc

Configure Nelson to use visual studio as default compiler

## Syntax

- [res, message] = configuremsvc()

## Output argument

- res - a logical: true if visual studio was found
- message - a string: empty if visual studio was found or an error message.

## Description

  <p>By default, Nelson has no C/C++ compiler defined as default on Windows.</p>
  <p>On others platforms, we will suppose that a C/C++ compiler is always available and it is not required to call this function.</p>
  <p>On Windows, you need to call once <b>configuremsvc</b> if you want to use visual studio as default compiler.</p>
  <p>After each update of Visual studio, it will be required to call again <b>configuremsvc</b>.</p>

## Example

```matlab
configuremsvc()
```

## See also

[Supported C/C++ compilers](supported_compilers.md), [havecompiler](havecompiler.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
