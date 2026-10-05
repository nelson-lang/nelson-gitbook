# istabular

Determine if input is a tabular object.

## 📝 Syntax

- tf = istabular(A)

## 📥 Input argument

- A - Input array.

## 📤 Output argument

- tf - Logical scalar.

## 📄 Description


<b>istabular(A)</b> returns true when <b>A</b> is a table or timetable.

## 💡 Example



```matlab
T = table([1; 2]);
istabular(T)
```


## 🔗 See also

[istable](../../table/3_summary_information/istable.md), [istimetable](../../table/3_summary_information/istimetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
