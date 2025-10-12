# colon

colon operator ':'.

## Syntax

- R = colon(base, limit)
- R = colon(base, increment, limit

## Input argument

- base - a variable
- limit - a variable
- increment - a variable (optional)

## Output argument

- C - result

## Description

<p>
            colon creates vectors. It is an usefull function for loop, extraction and insertion.</p>

<p>
                colon(base, limit) is equivalent to base:limit
            </p>

<p>
                colon(base, increment, limit) is equivalent to base:increment:limit
            </p>

## Examples

```matlab
1:0.5:4
```

```matlab
A = 1:6
B = 1:4:12
C = rand(3, 4)
C(:)
C(:, 3)
C(2, :)
C(:, 1, 1)
C(:) = rand(3, 4)

```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
