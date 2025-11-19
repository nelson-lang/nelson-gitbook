# nargoutchk

Checks the number of output arguments.

## 📝 Syntax

- nargoutchk(minArgs, maxArgs)
- msg = nargoutchk(minArgs, maxArgs, numArgs)
- st = nargoutchk(minArgs, maxArgs, numArgs, 'struct')

## 📥 Input argument

- minArgs - minimum number of accepted outputs (scalar integer value).
- maxArgs - maximum number of accepted outputs (scalar integer value).
- numArgs - number of function outputs (scalar integer value).

## 📤 Output argument

- msg - a string: error message.
- st - a struct with error message and identifier.

## 📄 Description

<b>nargoutchk</b> checks the number of output arguments of an function.

To ensure a minimum number of outputs while imposing no maximum limit, set<b>maxArgs</b> to <b>inf</b>. For example,<b>nargoutchk(2, inf)</b> generates an error if fewer than two outputs are specified.

## 💡 Example

With an macro function:

```matlab
nargoutchk(1, 2, 3)
nargoutchk(1, 2, 3, 'struct')
```

## 🔗 See also

[nargout](../core/nargin.md), [narginchk](../core/narginchk.md).

## 🕔 History

| Version | 📄 Description             |
| ------- | -------------------------- |
| 1.0.0   | initial version            |
| 1.10.0  | nargoutchk(3, Inf) managed |

<!--
## 👤 Author

Allan CORNET
-->
