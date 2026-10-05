# accumarray

Construct array by accumulation.

## 📝 Syntax

- A = accumarray(subs, val)
- A = accumarray(subs, val, sz)
- A = accumarray(subs, val, sz, fun)
- A = accumarray(subs, val, sz, fun, fillval)

## 📥 Input argument

- subs - subscripts: column vector or matrix of positive integers.
- val - values to accumulate: column vector or scalar.
- sz - size of the output: row vector or [].
- fun - accumulation function: function handle (default @sum).
- fillval - value for empty positions (default 0).

## 📤 Output argument

- A - accumulated array.

## 📄 Description


<b>accumarray(subs, val)</b> groups the elements of <b>val</b> by the subscripts in <b>subs</b> and applies <b>@sum</b> to each group. 

Each row of <b>subs</b> is the position in the output where the corresponding value of <b>val</b> is accumulated. 

<b>fun</b> replaces the default sum, and <b>fillval</b> sets the value of positions that receive no contribution.

## 💡 Example



```matlab
accumarray([1;2;1;3], [10;20;30;40])
accumarray([1;1;2], [3;5;7], [], @max)
```


## 🔗 See also

[sum](../data_analysis/sum.md), [unique](../data_analysis/unique.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
