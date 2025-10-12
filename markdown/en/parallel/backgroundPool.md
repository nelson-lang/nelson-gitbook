# backgroundPool

Environment for running nelson's code in the background.

## Syntax

- pool = backgroundPool()

## Output argument

- pool - backgroundPool object.

## Description

<p>
            pool = backgroundPool() returns the background pool.</p>

<p>This allows to run other code in your Nelson's session at the same time.</p>

<p></p>

<p>Properties of backgroundPool object:</p>

<p>'FevalQueue': Queue of FevalFuture objects to run on the background pool (read only).</p>

<p>'NumWorkers': Number of workers (read only).</p>

<p>'Busy': Flag that indicates whether the background pool is busy, logical (read only).</p>

## Example

```matlab
b = backgroundPool()
fptr = str2func('magic');
f = parfeval(b, fptr, 1, 9);
```

## See also

[parfeval](../parallel/parfeval.md), [fetchOutputs](../parallel/fetchOutputs.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
