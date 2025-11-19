# narginchk

Checks the number of input arguments.

## 📝 Syntax

- narginchk(minArgs, maxArgs)

## 📥 Input argument

- minArgs - minimum number of accepted inputs (scalar integer value).
- maxArgs - maximum number of accepted inputs (scalar integer value).

## 📄 Description

<b>narginchk</b> checks the number of input arguments of an function.

To ensure that a minimum number of arguments is provided, while allowing an unlimited maximum number by setting<b>maxArgs</b> to <b>inf</b>. For instance, use<b>narginchk(2, inf)</b> to throw an error if fewer than two inputs are supplied.

## 💡 Example

With an macro function:

```matlab
narginchk(1, 2)
```

## 🔗 See also

[nargin](../core/nargin.md), [nargoutchk](../core/nargoutchk.md).

## 🕔 History

| Version | 📄 Description            |
| ------- | ------------------------- |
| 1.0.0   | initial version           |
| 1.10.0  | narginchk(3, Inf) managed |

<!--
## 👤 Author

Allan CORNET
-->
