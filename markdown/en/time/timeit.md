# timeit

Measure time required to run function.

## Syntax

- t = timeit(f)
- t = timeit(f, nLhs)
- t = timeit(f, nLhs, x1, ..., xm)

## Input argument

- f - Function handle: Function to run.
- nLhs - integer value: number of output arguments. (1: default)
- x1, ..., xm - Input arguments, specified as a comma-separated list of variables or expressions.

## Output argument

- t - time (in seconds).

## Description

<p>
            t = timeit(f) measures the time elapsed required to run the function specified by the function handle f.</p>

<p>To perform a robust measurement, timeit calls function multiple times and returns the median of the measurements.</p>

<p>If the function runs fast, timeit might call the function many times.</p>

## Examples

```matlab

f = str2func('@()sleep(6)');
tic();t = timeit(f), toc()
```

```matlab
X = rand(100);
f = str2func('@(X) svd(X);');
tic(), t1 = timeit(f, 1, X), toc()
tic(), t2 = timeit(f, 3, X), toc()
```

## See also

[tic](../time/tic.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
