# randperm

Random permutation of integers values.

## Syntax

- p = randperm(n, k)

## Input argument

- n - Number of integers in sample interval (positive integer).
- k - Number of integers to select (positive integer).

## Output argument

- p - a row vector.

## Description

<p>
            p = randperm(n) returns a row vector containing a random permutation of 1:n.</p>

## Example

```matlab
randperm(7)
```

## See also

[rand](../random/rand.md).

## History

| Version | Description                                                |
| ------- | ---------------------------------------------------------- |
| 1.0.0   | initial version                                            |
| 1.15.0  | add second input argument for number of elements to select |

## Author

Allan CORNET
