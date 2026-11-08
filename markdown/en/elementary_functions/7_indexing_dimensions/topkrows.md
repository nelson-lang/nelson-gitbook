# topkrows

Top k sorted rows of a matrix.

## 📝 Syntax

- B = topkrows(A, k)
- B = topkrows(A, k, col)
- B = topkrows(A, k, col, direction)
- [B, I] = topkrows(...)

## 📥 Input argument

- A - a matrix.
- k - the number of rows to return.
- col - the columns used for sorting (default all).
- direction - <b>'descend'</b> (default) or <b>'ascend'</b>.

## 📤 Output argument

- B - the first <b>k</b> rows of the sorted matrix.
- I - the indices such that <b>B = A(I, :)</b>.

## 📄 Description


<b>B = topkrows(A, k)</b> returns the first <b>k</b> rows of <b>A</b> sorted in descending order.

## 💡 Example



```matlab
[B, I] = topkrows([3 1; 1 2; 2 9], 2)
```


## 🔗 See also

[sortrows](../../elementary_functions/7_indexing_dimensions/sortrows.md), [issortedrows](../../elementary_functions/7_indexing_dimensions/issortedrows.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
