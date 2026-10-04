# asserts.notApprox

Check that two numeric values are not approximately equal.

## 📝 Syntax

- asserts.notApprox(computed, expected, relTol)
- asserts.notApprox(computed, expected, relTol, absTol)
- [res, msg] = asserts.notApprox(computed, expected, relTol)

## 📥 Input argument

- computed - Computed numeric value.
- expected - Value that must not be approximately equal to computed.
- relTol - Nonnegative finite relative tolerance.
- absTol - Optional nonnegative finite absolute tolerance.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when asserts.isapprox would fail.

Both tolerances must be finite nonnegative numeric scalars.

## 💡 Examples

Different numeric values

```matlab
asserts.notApprox(1, 2, eps);
```

Capture approximate equality

```matlab
[res, msg] = asserts.notApprox(1, 1, eps);
```

## 🔗 See also

[asserts.isapprox](../assert_functions/asserts.isapprox.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
