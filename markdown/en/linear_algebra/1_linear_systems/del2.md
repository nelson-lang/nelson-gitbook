# del2

Discrete Laplacian.

## 📝 Syntax

- L = del2(U)
- L = del2(U, h)
- L = del2(U, hx, hy)

## 📥 Input argument

- U - Input array: vector, matrix or multidimensional array.
- h - Uniform scalar spacing between points in every direction, 1 (default).
- hx, hy - Scalar spacing between points, hx along the columns (x direction) and hy along the rows (y direction).

## 📤 Output argument

- L - Discrete Laplacian, an array the same size and class as U.

## 📄 Description


<b>del2(U)</b> returns a discrete approximation of the Laplacian of U divided by 2\*ndims(U). 

For an interior element of a matrix, the value is the average of its four neighbours minus the element itself: L(i,j) = (U(i-1,j) + U(i+1,j) + U(i,j-1) + U(i,j+1))/4 - U(i,j). 

At the borders, a second-difference extrapolation is used so that L has the same size as U. 

<b>del2(U, h)</b> uses the uniform spacing h in every direction, and <b>del2(U, hx, hy)</b> uses the spacing hx along the columns and hy along the rows.

## 💡 Example



```matlab
L = del2(magic(4))
```


## 🔗 See also

[gradient](../../linear_algebra/1_linear_systems/gradient.md), [diff](../../linear_algebra/1_linear_systems/diff.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
