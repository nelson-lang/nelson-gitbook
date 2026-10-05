# unwrap

Shift phase angles to remove jumps.

## 📝 Syntax

- q = unwrap(p)
- q = unwrap(p, tol)
- q = unwrap(p, tol, dim)

## 📥 Input argument

- p - a real vector or matrix of phase angles in radians.
- tol - jump tolerance, pi by default. A jump larger than tol is corrected by adding a multiple of 2\*pi.
- dim - dimension along which to operate; by default the first dimension whose size is not 1.

## 📤 Output argument

- q - the phase angles with jumps of more than tol removed, with the same size and class as <b>p</b>.

## 📄 Description


<b>unwrap</b> corrects the radian phase angles in <b>p</b> by adding multiples of 2\*pi whenever the jump between consecutive elements is larger than <b>tol</b> (pi by default). 

For a matrix, each column is unwrapped independently unless a dimension is given.

## 💡 Example



```matlab
q = unwrap([0 3*pi/2 3*pi])

```


## 🔗 See also

[angle](../../elementary_functions/3_complex_numbers/angle.md), [mod](../../elementary_functions/2_elementary_math/mod.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
