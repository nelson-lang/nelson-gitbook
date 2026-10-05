# perms

All possible permutations.

## 📝 Syntax

- P = perms(v)

## 📥 Input argument

- v - vector.

## 📤 Output argument

- P - matrix containing all permutations of the elements of v, in reverse lexicographic order.

## 📄 Description


<b>perms</b> returns a matrix containing all permutations of the elements of vector v. Each row of P is one permutation; there are factorial(numel(v)) rows, listed in reverse lexicographic order.

## 💡 Example



```matlab
perms([1 2 3])
```


## 🔗 See also

[nchoosek](../../elementary_functions/2_elementary_math/nchoosek.md), [factorial](../../elementary_functions/2_elementary_math/factorial.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
