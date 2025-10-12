# havecompiler

Detect if a C/C++ compiler is configured.

## Syntax

- [status, compiler] = havecompiler()

## Output argument

- status - a logical.
- compiler - a string: 'msvc', 'mingw', 'unix' or ''.

## Description

<p>
            havecompiler detects if C/C++ compiler is configured for Nelson.</p>

<p>On Unix platforms (linux, MacOs), havecompiler returns always true as status and unix as compiler.</p>

## Example

```matlab
[status, message] = havecompiler()
```

## See also

[configuremsvc](../dynamic_link/configuremsvc.md), [configuremingw](../dynamic_link/configuremingw.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
