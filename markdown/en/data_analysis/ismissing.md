# ismissing

Check for missing values.

## 📝 Syntax

- tf = ismissing(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- tf - logical: result of 'ismissing'.

## 📄 Description

<b>ismissing</b> returns a logical array which is true where elements of M are <b>missing</b> values.

missing data are defined as:

<b>NaN</b> for double or single

<b>missing</b> for string array

<b>
        '
        '
      </b> for character array

<b>
        '
        '
      </b> for cell of character array

## 💡 Example

```matlab
A = ["Nel", NaN, "son"];
ismissing(A)
B = [1 2 NaN Inf];
ismissing(B)
C = 'Nel son'
ismissing(C)
D = {'Nel' '' 'son'}
ismissing(D)

```

## 🔗 See also

[isfinite](../elementary_functions/isfinite.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
