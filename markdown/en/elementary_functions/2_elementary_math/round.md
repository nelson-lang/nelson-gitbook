# round

Round to nearest integer

## 📝 Syntax

- C = round(A)
- C = round(A, N)
- C = round(A, N, 'decimals')
- C = round(A, N, 'significant')

## 📥 Input argument

- A - a variable
- N - number of digits: real integer scalar.
- type - 'decimals' (default) or 'significant'.

## 📤 Output argument

- C - result of round.

## 📄 Description

<b>round</b> rounds the elements to the nearest integers.

<b>round(A, N)</b> rounds to <b>N</b> digits to the right of the decimal point (<b>N</b> may be negative). This is the same as <b>round(A, N, 'decimals')</b>.

<b>round(A, N, 'significant')</b> rounds to <b>N</b> significant digits; here <b>N</b> must be positive.

Sparse single and sparse single complex inputs are supported. Only stored nonzero entries are rounded and the result keeps the sparse storage and the input precision.

## 💡 Examples

```matlab
round(pi)
```

Round to a number of decimal or significant digits.

```matlab
round(3.14159, 2)
round(12345, 2, 'significant')
```

Round a sparse single matrix to nearest integers.

```matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = round(S)
```

## 🔗 See also

[floor](../../elementary_functions/floor.md), [fix](../../elementary_functions/fix.md), [ceil](../../elementary_functions/ceil.md).

## 🕔 History

| Version | 📄 Description                                                |
| ------- | ------------------------------------------------------------- |
| 1.0.0   | initial version                                               |
| 2.0.0   | sparse single and sparse single complex inputs supported.     |
| 2.0.0   | round(A, N) and the 'decimals' / 'significant' options added. |

<!--
## 👤 Author

Allan CORNET
-->
