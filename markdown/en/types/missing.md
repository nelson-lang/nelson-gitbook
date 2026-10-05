# missing

Return a missing value.

## 📝 Syntax

- m = missing()

## 📤 Output argument

- m - a missing value for use in arrays and tables

## 📄 Description
<b>missing</b> returns a special value to represent missing (undefined data). When assigned into an array or table, the <b>missing</b> value is automatically converted into the standard missing value used by the array’s data type. 

An indexed assignment such as <b>A(k) = missing</b> or <b>A(:) = missing</b> keeps the class of <b>A</b>: <b>missing</b> becomes <b>NaN</b> in a <b>double</b> or <b>single</b> array, <b><missing></b> in a <b>string</b> array, <b>NaN</b> in a <b>duration</b> array and <b>NaT</b> in a <b>datetime</b> array. Arrays of the other classes (char, logical, integer, cell) have no missing value and the assignment raises an error. 

Concatenation follows the same rules: <b>[missing missing]</b> is a 1-by-2 <b>missing</b> array, <b>[missing 1]</b> is <b>[NaN 1]</b>, <b>[missing []]</b> is <b>NaN</b>, <b>[missing "a"]</b> is a string array, and concatenating <b>missing</b> with a char, logical, integer, cell, struct or function handle value raises an error.

## 💡 Example



```matlab

A = missing()
A = double([1, 2, missing()])
B = string(["foo", missing()])
C = struct("Name", "Alice", "Age", missing())
S = strings(1, 3);
S(2:3) = missing
X = [1 2 3];
X(:) = missing
M = [missing missing]

```


## 🔗 See also

[ismissing](../data_analysis/ismissing.md), [missing](../types/missing.md), [NaN](../constructors_functions/NaN.md), [string](../string/1_create_convert_text/string.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
