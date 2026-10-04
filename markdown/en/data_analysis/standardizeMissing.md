# standardizeMissing

Convert indicator values to standard missing values.

## 📝 Syntax

- B = standardizeMissing(A, indicators)

## 📥 Input argument

- A - Input array or table.
- indicators - Values to treat as missing.

## 📤 Output argument

- B - Data with standardized missing values.

## 📄 Description

<b>standardizeMissing</b> replaces indicator values with standard missing values such as NaN for numeric variables.

## 💡 Example

```matlab
T = table([1; -99; 3], 'VariableNames', {'A'});
R = standardizeMissing(T, -99)
```

## 🔗 See also

[fillmissing](../data_analysis/fillmissing.md), [rmmissing](../data_analysis/rmmissing.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
