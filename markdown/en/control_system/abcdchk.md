# abcdchk

Verifies the dimensional compatibility of matrices A, B, C, and D.

## Syntax

- [msg, A, B, C, D] = abcdchk(a, b, c, d)

## Input argument

- a (n x n) - Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
- b (n x m) - Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
- c (p x n) - Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
- d (p x m) - Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.

## Output argument

- msg - Returns an empty struct if matrix dimensions are consistent. Otherwise it returns the associated error message.
- a (n x n) - Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
- b (n x m) - Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
- c (p x n) - Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
- d (p x m) - Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.

## Description

<p>
            abcdchk verify dimensional consistency of the matrices A, B, C, D, E.</p>

<p>It additionally adjusts the dimensions of any empty 0-by-0 matrices to ensure their alignment with the rest.</p>

## Example

```matlab
A = [0 1; -2 -3];
B = [0;  1];
C = [1 0];
D = 0;
[msg, AA, BB, CC, DD] = abcdchk(A, B, C, D)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
