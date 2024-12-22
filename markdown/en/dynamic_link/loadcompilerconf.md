# loadcompilerconf

load compiler configuration.

## Syntax

- res = loadcompilerconf()
- [res, compiler] = loadcompilerconf()

## Output argument

- res - a logical
- compiler - a string: 'msvc', 'mingw', 'unix' or ''

## Description

  <p><b>loadcompilerconf</b> returns true if compiler was previously configured with <b>configuremsvc</b> or <b>configuremingw</b>.</p>
  <p><b>loadcompilerconf</b> returns always false on others platforms and 'unix' as compiler.</p>
  <p><b>loadcompilerconf</b> is called at Nelson's startup.</p>

## See also

[removecompilerconf](removecompilerconf.md), [configuremingw](configuremingw.md), [configuremingw](configuremingw.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
