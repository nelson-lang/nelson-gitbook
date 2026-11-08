# anymissing

Check whether an array contains missing values.

## 📝 Syntax

- tf = anymissing(A)

## 📥 Input argument

- A - an array, table or categorical.

## 📤 Output argument

- tf - a logical scalar: <b>true</b> when <b>A</b> has any missing value.

## 📄 Description


<b>tf = anymissing(A)</b> returns <b>true</b> when <b>A</b> contains at least one missing value (for example <b>NaN</b> or <b>missing</b>).

## 💡 Example



```matlab
anymissing([1 NaN 3])
```


## 🔗 See also

[ismissing](../data_analysis/ismissing.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
