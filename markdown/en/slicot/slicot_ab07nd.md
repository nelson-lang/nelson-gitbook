# slicot\_ab07nd

Inverse of a given linear system.

## 📝 Syntax

- [A\_OUT, B\_OUT, C\_OUT, D\_OUT, RCOND, INFO] = slicot\_ab07nd(A\_IN, B\_IN, C\_IN, D\_IN)

## 📥 Input argument

- A\_IN - The leading N-by-N part of this array must contain the state matrix A of the original system.
- B\_IN - The leading N-by-M part of this array must contain the input matrix B of the original system.
- C\_IN - The leading M-by-N part of this array must contain the output matrix C of the original system.
- D\_IN - The leading M-by-M part of this array must contain the feedthrough matrix D of the original system.

## 📤 Output argument

- A\_OUT - The leading N-by-N part of this array contains the state matrix Ai of the inverse system.
- B\_OUT - The leading N-by-M part of this array contains the input matrix Bi of the inverse system.
- C\_OUT - The leading M-by-N part of this array contains the output matrix Ci of the inverse system.
- D\_OUT - The leading M-by-M part of this array contains the feedthrough matrix Di of the inverse system.
- RCOND - The estimated reciprocal condition number of the feedthrough matrix D of the original system.
- INFO - = 0: successful exit;

## 📄 Description


To compute the inverse (Ai, Bi, Ci, Di) of a given system (A, B, C, D).

## Used function(s)

AB07ND

## 📚 Bibliography

http://slicot.org/objects/software/shared/doc/AB07ND.html

## 💡 Example



```matlab
A_IN = [1.0   2.0   0.0;
   4.0  -1.0   0.0;
   0.0   0.0   1.0];

B_IN = [1.0   0.0;
   0.0   1.0;
   1.0   0.0];

C_IN = [0.0   1.0  -1.0;
   0.0   0.0   1.0];

D_IN = [4.0   0.0;
   0.0   1.0];

[A_OUT, B_OUT, C_OUT, D_OUT, RCOND, INFO] = slicot_ab07nd(A_IN, B_IN, C_IN, D_IN)
```


## 🔗 See also

[slicot_ab04md](../slicot/slicot_ab04md.md), [ss](../control_system/1_dynamic_system_models/ss.md), [feedback](../control_system/2_model_conversion_interconnection/feedback.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

SLICOT Documentation
-->
