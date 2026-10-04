# filtic

Initial conditions for digital filtering.

## 📝 Syntax

- ZI = filtic(B, A, Y)
- ZI = filtic(B, A, Y, X)

## 📥 Input argument

- B, A - filter coefficients.
- Y - past output values.
- X - past input values.

## 📤 Output argument

- ZI - initial conditions vector.

## 📄 Description

<b>filtic</b> computes initial conditions compatible with direct-form filtering.

## 💡 Example

```matlab

zi = filtic([1 1], 1, 3);

```

## 🔗 See also

[filter](../../elementary_functions/filter.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
