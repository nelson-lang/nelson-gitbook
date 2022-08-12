# narginchk

Checks the number of input arguments.

## Syntax

- narginchk(minArgs, maxArgs)

## Input argument

- minArgs - minimum number of accepted inputs (scalar integer value).
- maxArgs - maximum number of accepted inputs (scalar integer value).

## Description

  <p><b>narginchk</b> checks the number of input arguments of an function.</p>

## Example

With an macro function:

```matlab
narginchk(1, 2)
```

## See also

[nargin](nargin.md), [nargoutchk](nargoutchk.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
