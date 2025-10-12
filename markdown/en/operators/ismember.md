# ismember

Array elements that are members of another array.

## Syntax

- T = ismember(A, B)

## Input argument

- A - a variable
- B - a variable

## Output argument

- T - result of ismember.

## Description

<p>
            T = ismember(A, B) returns an array of logical where the data in A is found in B.</p>

## Example

```matlab
A = [50 30 40 20];
B = [20 40 40 40 60 80];
T = ismember(A, B)

T = ismember(["a","b","f"], ["b", "f", "c"])


```

## See also

[sort](../operators/sort.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
