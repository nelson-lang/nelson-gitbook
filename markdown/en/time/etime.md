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

  <p><b>e = etime(t2, t1)</b> returns the number of seconds between two date vectors or matrices of date vectors, <b>t1</b> and <b>t2</b>.</p>

## Example

```matlab
t1 = clock()
sleep(6)
t2 = clock()
etime(t2, t1)
```

## See also

[tic](tic.md), [toc](toc.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
