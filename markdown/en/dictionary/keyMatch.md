# keyMatch

Check whether two dictionary keys are same.

## Syntax

- tf = keyMatch(A, B)

## Input argument

- A - array
- B - array

## Output argument

- tf - logical: true or false.

## Description

<p>
            tf = keyMatch(A, B) returns true if arrays A and B have identical classes, properties, dimensions, and values, and returns false otherwise.</p>

<p>For custom classes, overloading keyMatch may be necessary to ensure accurate equivalence.</p>

## Example

```matlab
A = {'a', 'b', 1};
B = {1, 'a', 'b'};
C = A;
D = B;
keyMatch(A, B)
keyMatch(A, C)
keyMatch(B, D)
```

## See also

[keyHash](../dictionary/keyHash.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
