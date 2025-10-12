# loadcompilerconf

load compiler configuration.

## Syntax

- res = loadcompilerconf()
- [res, compiler] = loadcompilerconf()

## Output argument

- res - a logical
- compiler - a string: 'msvc', 'mingw', 'unix' or ''

## Description

<p>
            loadcompilerconf returns true if compiler was previously configured with configuremsvc or configuremingw.</p>

<p>
                loadcompilerconf returns always false on others platforms and 'unix' as compiler.</p>

<p>
                    loadcompilerconf is called at Nelson's startup.</p>

## See also

[removecompilerconf](../dynamic_link/removecompilerconf.md), [configuremingw](../dynamic_link/configuremingw.md), [configuremsvc](../dynamic_link/configuremsvc.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
