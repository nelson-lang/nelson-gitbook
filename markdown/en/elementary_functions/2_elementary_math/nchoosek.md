# nchoosek

Binomial coefficient or combinations.

## 📝 Syntax

- c = nchoosek(n, k)
- C = nchoosek(v, k)

## 📥 Input argument

- n - nonnegative integer scalar: number of available choices.
- v - vector containing the available elements.
- k - nonnegative integer scalar: number of selected elements.

## 📤 Output argument

- c - binomial coefficient when the first input is a scalar.
- C - matrix whose rows contain the k-element combinations of v.

## 📄 Description


nchoosek(n, k) returns the binomial coefficient for nonnegative integer scalar n. 

nchoosek(v, k) returns a matrix containing all k-element combinations of the elements of vector v.

## Used function(s)


    factorial
  

## 💡 Example

Compute a binomial coefficient and all two-element combinations of a vector.

```matlab
b = nchoosek(5, 2)
C = nchoosek([10 20 30 40], 2)
```


## 🔗 See also

[factorial](../../elementary_functions/2_elementary_math/factorial.md), [prod](../../data_analysis/prod.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
