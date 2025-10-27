# acker

Pole placement gain selection using Ackermann's formula.

## 📝 Syntax

- K = acker(A, B, P)

## 📥 Input argument

- A - State matrix: Nx-by-Nx matrix
- B - Input-to-state matrix: Nx-by-Nu matrix
- P - Desired closed-loop pole location vector.

## 📤 Output argument

- K - feedback gain matrix.

## 📄 Description

The function <b>acker</b> computes the feedback gain matrix <b>K</b> for a single-input system described by the state-space matrices <b>A</b> and <b>B</b>.

The closed-loop poles of the system under the feedback law <b>u = -Kx</b> are determined by the specified vector <b>P</b>, where <b>P</b> represents the desired pole locations.

The closed-loop poles are essentially the eigenvalues of the matrix <b>A - B*K</b>, calculated as <b>P = eig(A - B*K)</b>.

It's important to note that this algorithm utilizes Ackermann's formula.

However, users should be aware that this method may not be numerically reliable, particularly for systems of order greater than 10 or for systems that are weakly controllable.

If the algorithm encounters numerical instability or if the closed-loop poles deviate significantly (more than 10%) from the desired locations specified in <b>P</b>, a warning message is issued to alert the user about potential issues.

Users are advised to exercise caution and consider alternative methods for higher-order or weakly controllable systems.

## 💡 Example

```matlab
A = [0 1 0; 0 0 1;-1 -5 -6];
B = [ 0; 0; 1];
P = [-10 -2-4i -2+4i];
K = acker(A, B, P)
```

## 🔗 See also

[place](../control_system/place.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
