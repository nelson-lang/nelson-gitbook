# ismember

Array elements that are members of another array.

## 📝 Syntax

- T = ismember(A, B)
- [T, loc] = ismember(A, B)

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- T - result of ismember.
- loc - lowest index in B for each matching element of A, 0 where there is no match.

## 📄 Description


<b>T = ismember(A, B)</b> returns an array of logical where the data in<b>A</b> is found in <b>B</b>. 

<b>[T, loc] = ismember(A, B)</b> also returns <b>loc</b>, the lowest index in <b>B</b> for each element of <b>A</b> that is a member of <b>B</b>, and 0 otherwise.

## 💡 Example



```matlab
A = [50 30 40 20];
B = [20 40 40 40 60 80];
T = ismember(A, B)

T = ismember(["a","b","f"], ["b", "f", "c"])


```


## 🔗 See also

[sort](../data_analysis/sort.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
