# gcd

Greatest common divisor

## 📝 Syntax

- G = gcd(A, B)
- [G, C, D] = gcd(A, B)

## 📥 Input argument

- A - a scalar, vector, or matrix of real integer values.
- B - a scalar, vector, or matrix of real integer values.

## 📤 Output argument

- G - result of gcd function (Greatest common divisor).
- C, D - Bezout coefficients such that C .\* A + D .\* B == G.

## 📄 Description

<b>G = gcd(A, B)</b> computes the greatest common divisor using the Euclidian algorithm.

<b>[G, C, D] = gcd(A, B)</b> also returns the Bezout coefficients <b>C</b>and <b>D</b> such that <b>C .\* A + D .\* B == G</b>. Unsigned integer inputs are not supported by this syntax.

## 📚 Bibliography

Knuth, D. “Algorithms A and X.” The Art of Computer Programming, Vol. 2, Section 4.5.2. Reading, MA: Addison-Wesley, 1973.

## 💡 Example

```matlab
A = [-5 7; 10 0];
B = [-15 3; 50 0];
G = gcd(A, B)
```

## 🔗 See also

[gamma](../special_functions/gamma.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
