# issortedrows

Determine whether matrix rows are sorted.

## 📝 Syntax

- tf = issortedrows(A)
- tf = issortedrows(A, col)
- tf = issortedrows(A, ..., direction)

## 📥 Input argument

- A - a matrix.
- col - the columns used for the comparison.
- direction - <b>'ascend'</b> (default) or <b>'descend'</b>.

## 📤 Output argument

- tf - a logical: <b>true</b> when the rows of <b>A</b> are sorted.

## 📄 Description


<b>tf = issortedrows(A)</b> returns <b>true</b> when the rows of <b>A</b> are sorted in ascending order. 

Pass <b>col</b> and <b>direction</b> to match the sorting used by <b>sortrows</b>.

## 💡 Example



```matlab
issortedrows([1 2; 3 4])
```


## 🔗 See also

[sortrows](../../elementary_functions/7_indexing_dimensions/sortrows.md), [topkrows](../../elementary_functions/7_indexing_dimensions/topkrows.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
