# nargchk

Validate number of input arguments.

## 📝 Syntax

- msg = nargchk(minArgs, maxArgs, n)
- msg = nargchk(minArgs, maxArgs, n, 'string')
- msgstruct = nargchk(minArgs, maxArgs, n, 'struct')

## 📥 Input argument

- minArgs - minimum number of accepted inputs (scalar integer value).
- maxArgs - maximum number of accepted inputs (scalar integer value).
- n - number of supplied inputs to check, usually <b>nargin</b> (scalar integer value).
- 'string' or 'struct' - output type: <b>'string'</b> (default) returns a character message, <b>'struct'</b> returns an error structure.

## 📤 Output argument

- msg - a character row vector error message, or <b>''</b> (empty) if <b>n</b> is in the range <b>[minArgs, maxArgs]</b>.
- msgstruct - a structure with fields <b>message</b> and <b>identifier</b> (a <b>1x0</b> empty structure if <b>n</b> is in range).

## 📄 Description

<b>nargchk</b> checks whether the number of input arguments <b>n</b> falls within the range <b>[minArgs, maxArgs]</b>.

It returns the message <b>'Not enough input arguments.'</b> when <b>n</b> is less than <b>minArgs</b>, <b>'Too many input arguments.'</b> when <b>n</b> is greater than <b>maxArgs</b>, and an empty result otherwise.

It is typically used as <b>error(nargchk(minArgs, maxArgs, nargin))</b> at the start of a function.

<b>nargchk</b> is deprecated and kept for compatibility with legacy code. Use <b>narginchk</b> instead in new code.

## 💡 Examples

Not enough input arguments:

```matlab
msg = nargchk(2, 3, 1)
```

Too many input arguments:

```matlab
msg = nargchk(1, 2, 3)
```

In range returns an empty message:

```matlab
msg = nargchk(1, 3, 2)
```

## 🔗 See also

[narginchk](../core/narginchk.md), [nargoutchk](../core/nargoutchk.md), [nargin](../core/nargin.md), [error](../error_manager/error.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
