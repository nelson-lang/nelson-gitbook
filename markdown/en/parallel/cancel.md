# cancel

Stop function running in the background.

## Syntax

- cancel(f)

## Input argument

- f - FevalFuture object: scalar or array.

## Description

<p>
            cancel(f) will stop each running or queued element of the Future array f.</p>

<p>Future cancelled Findicates an error as property.</p>

<p>Some functions cannot be interrupted by pressing Ctrl+C or cancel, such as save function.</p>

## Example

```matlab
fptr = str2func('pause');
for i = 1:100
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
f(70)
cancel(f(70))
f(70)
```

## See also

[pause](../core/pause.md), [parfeval](../parallel/parfeval.md), [wait](../parallel/wait.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
