# narginchk

Checks the number of input arguments.

## Syntax

- narginchk(minArgs, maxArgs)

## Input argument

- minArgs - minimum number of accepted inputs (scalar integer value).
- maxArgs - maximum number of accepted inputs (scalar integer value).

## Description

<p>
            narginchk checks the number of input arguments of an function.</p>

<p>To ensure that a minimum number of arguments is provided, while allowing an unlimited maximum number by setting maxArgs to inf. For instance, use narginchk(2, inf) to throw an error if fewer than two inputs are supplied.</p>

## Example

With an macro function:

```matlab
narginchk(1, 2)
```

## See also

[nargin](../core/nargin.md), [nargoutchk](../core/nargoutchk.md).

## History

| Version | Description               |
| ------- | ------------------------- |
| 1.0.0   | initial version           |
| 1.10.0  | narginchk(3, Inf) managed |

## Author

Allan CORNET
