# etime

Time elapsed between date vectors.

## Syntax

- e = etime(t2, t1)

## Input argument

- t2 - Date vectors: 1-by-6 vector or m-by-6 matrix.
- t1 - Date vectors: 1-by-6 vector or m-by-6 matrix.

## Output argument

- e - a scalar or a vector: time elapsed (seconds).

## Description

<p>
            e = etime(t2, t1) returns the number of seconds between two date vectors or matrices of date vectors, t1 and t2.</p>

## Example

```matlab
t1 = clock()
sleep(6)
t2 = clock()
etime(t2, t1)
```

## See also

[tic](../time/tic.md), [toc](../time/toc.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
