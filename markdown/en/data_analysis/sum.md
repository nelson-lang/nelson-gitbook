# sum

Sum of array elements.

## 📝 Syntax

- R = sum(M)
- R = sum(M, d)
- R = sum(M, 'all')
- R = sum(M, \_\_\_, f)
- R = sum(M, d, t)
- R = sum(M, 'all', t, f)

## 📥 Input argument

- M - an array of double, single, integers, ...
- d - dimension to operate along: positive integer scalar.
- 'all' - sum all elements of M and return a scalar.
- t - a string: 'default', 'double' or 'native'.
- f - a string: 'includenan' or 'omitnan'.

## 📤 Output argument

- R - Sum of array elements.

## 📄 Description


<b>R = sum(M)</b> returns the sum along the first non-singleton dimension of M. 

<b>R = sum(M, d)</b> sums along dimension d. <b>R = sum(M, 'all')</b> sums all elements of M and returns a scalar. 

Optional text arguments control the output type (<b>'default'</b>, <b>'double'</b> or <b>'native'</b>) and NaN handling (<b>'includenan'</b> or <b>'omitnan'</b>).

## 💡 Examples

Sum along a dimension.

```matlab
M = [1 2; 3 4];
R = sum(M, 2)

```
Sum all elements.

```matlab
M = [1 2; 3 4];
R = sum(M, 'all')

```
Keep the native integer output type.

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = sum(M, 'native')
```


## 🔗 See also

[ndims](../elementary_functions/7_indexing_dimensions/ndims.md), [prod](../data_analysis/prod.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
