# fetchNext

Retrieve next unread outputs from FevalFuture array.

## Syntax

- [idx, y1, ... , ym] = fetchNext(f)
- [idx, y1, ... , ym] = fetchNext(f, timeout)

## Input argument

- f - FevalFuture object
- timeout - timeout seconds: waits for a maximum of timeout seconds for a result in f to become available.

## Output argument

- idx - Index of the FevalFuture array, returned as an integer scalar.
- y1, ... , ym - outputs

## Description

<p>
            [idx, y1, ... , ym] = fetchNext(f) retrieves index idx of the new readable FevalFuture object in the array f that is finished, and m results from that FevalFuture as Y1, ... , Ym.</p>

<p></p>

## Example

```matlab

tic()
N = 100;
for idx = N:-1:1
    F(idx) = parfeval(backgroundPool,str2func('rank'),1,magic(idx));
end
results = zeros(1,N);
for idx = 1:N
    [finishedIdx, result] = fetchNext(F);
    results(finishedIdx) = result;
    disp(sprintf('Result: %d', result));
end
toc()

```

## See also

[parfeval](../parallel/parfeval.md), [fetchOutputs](../parallel/fetchOutputs.md), [backgroundPool](../parallel/backgroundPool.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
