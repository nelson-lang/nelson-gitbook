# rsf2csf

Convert real Schur form to complex Schur form.

## Syntax

- [Uc, Tc] = rsf2csf(U, T)

## Input argument

- U - unitary matrix (double or single, real or complex)
- T - schur form (double or single, real or complex)

## Output argument

- Uc - transformed unitary matrix
- Tc - transformed schur form

## Description

<p>
            [Uc, Tc] = rsf2csf(U, T) transforms the outputs of [U, T] = schur(X) for real matrices X from real Schur form to complex Schur form.</p>

## Example

```matlab
X = [1,     1,     1,     3;
     1,     2,     1,     1;
     1,     1,     3,     1;
    -2,     1,     1,     4];
[U, T] = schur(X)
[Uc, Tc] = rsf2csf(U, T)
```

## See also

[schur](../linear_algebra/schur.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
