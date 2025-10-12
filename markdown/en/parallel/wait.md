# wait

Wait for futures to be completed.

## Syntax

- wait(f)
- wait(f, state)
- TF = wait(f, state, timeout)

## Input argument

- f - FevalFuture object: scalar or array.
- state - state to wait: 'finished' (default) or 'running'
- timeout - seconds to wait: real numeric scalar.

## Output argument

- TF - logical: If each element of the Future array f finishes before timeout seconds elapse, TF is true. Otherwise, TF is false.

## Description

<p>
            wait(f) pauses execution until each element of the Future array f is finished.</p>

<p>
                wait(f, state) pauses execution until each element of the Future array f has its 'State' property set to state.</p>

<p>
                    tf = wait(f, state, timeout) pauses execution for a maximum of timeout seconds.</p>

## Example

```matlab
fptr = str2func('pause');
for i = 1:15
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
tic()
R = wait(f, 'finished');
toc()
```

## See also

[pause](../core/pause.md), [fetchOutputs](../parallel/fetchOutputs.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
