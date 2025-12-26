# obsv

Observability of state-space model.

## 📝 Syntax

- Ob = obsv(A, C)
- Ob = obsv(sys)

## 📥 Input argument

- sys - State-space model
- A - State matrix: Nx-by-Nx matrix
- C - State-to-output matrix: Ny-by-Nx matrix

## 📤 Output argument

- Ob - Observability matrix.

## 📄 Description

The <b>obsv</b> function is designed to calculate the observability matrix for state-space systems.

Given an Nx-by-Nx matrix <b>A</b> representing the system dynamics and a Ny-by-Nx matrix C specifying the output, the function call <b>obsv(A, C)</b> generates the observability matrix.

It is advised against using the rank of the observability matrix for testing observability due to numerical instability.

The observability matrix <b>Ob</b> tends to be numerically singular for systems with more than a few states, making the rank-based approach unreliable for such cases.

## 💡 Example

```matlab
% Define the system matrices
A = [1 2; 3 4];
C = [7 8];

% Check observability using obsv function
O = obsv(A, C);

% Display the observability matrix
disp('Observability matrix:');
disp(O);

% Check if the system is observable
if rank(O) == size(A, 1)
    disp('The system is observable.');
else
    disp('The system is not observable.');
end
```

## 🔗 See also

[obsvf](../control_system/obsvf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
