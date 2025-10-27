# ismember

Array elements that are members of another array.

## 📝 Syntax

- T = ismember(A, B)

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- T - result of ismember.

## 📄 Description

<b>T = ismember(A, B)</b> returns an array of logical where the data in <b>A</b> is found in <b>B</b>.

## 💡 Example

```matlab
A = [50 30 40 20];
B = [20 40 40 40 60 80];
T = ismember(A, B)

T = ismember(["a","b","f"], ["b", "f", "c"])


```

## 🔗 See also

[sort](../operators/sort.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
