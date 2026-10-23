# place

Pole placement gain selection using robust eigenstructure assignment.

## 📝 Syntax

- K = place(A, B, p)
- [K, prec] = place(A, B, p)
- [K, prec, message] = place(A, B, p)

## 📥 Input argument

- A - State matrix: Nx-by-Nx matrix.
- B - Input-to-state matrix: Nx-by-Nu matrix.
- p - Desired closed-loop pole location vector of length Nx.

## 📤 Output argument

- K - Feedback gain matrix: Nu-by-Nx matrix.
- prec - Estimated accuracy of the assigned poles, expressed as an approximate number of accurate decimal digits.
- message - Warning message returned when one or more poles could not be placed to the requested accuracy (empty otherwise).

## 📄 Description


The function <b>place</b> computes the feedback gain matrix <b>K</b> such that the closed-loop poles of <b>A - B\*K</b> are the entries of the vector <b>p</b>, i.e. <b>p = eig(A - B\*K)</b>. 

Unlike <b>acker</b>, which is restricted to single-input systems, <b>place</b> supports multi-input models (<b>B</b> with several columns) and selects the closed-loop eigenvectors so that the assignment is as insensitive as possible to perturbations. 

Complex desired poles must be supplied in conjugate pairs. The multiplicity of any pole cannot exceed the rank of <b>B</b>. For real <b>A</b>, <b>B</b> and <b>p</b>, the resulting gain <b>K</b> is real. 

The algorithm is the rank-one update method described in J. Kautsky, N. K. Nichols and P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, vol. 41, no. 5, pp. 1129-1155, 1985.

## 📚 Bibliography

J. Kautsky, N. K. Nichols and P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, 41(5):1129-1155, 1985.

## 💡 Example



```matlab
A = [-0.5 0 0; 0 -2 10; 0 1 -2];
B = [1 0; 0 0; 0 1];
p = [-3; -5; -7];
[K, prec] = place(A, B, p)
eig(A - B * K)
```


## 🔗 See also

[acker](../../control_system/5_control_design_tuning/acker.md), [lqr](../../control_system/5_control_design_tuning/lqr.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
