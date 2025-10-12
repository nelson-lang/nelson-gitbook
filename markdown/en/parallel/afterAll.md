# afterAll

Run function after all functions finish running in the background.

## Syntax

- B = afterAll(F, fcn, n)

## Input argument

- F - Input Future object (scalar or array).
- fcn - Function handle: Function to run after all input futures.
- n - Number of output arguments.

## Output argument

- B - AfterAllFuture object.

## Description

<p>
            B = afterAll(F, fcn, n) returns a AfterAllFuture object B.</p>

<p>Function fcn is automatically runned after all elements in the Future array F were finished.</p>

<p>If any of the elements in F encounters an error, the Error property of B contains an error.</p>

## Example

```matlab
pool = backgroundPool()
fptrRand = str2func('rand')
fptrMax = str2func('@(r) max(r)')
fptrMin = str2func('@(r) min(r)')
for idx= 1:10
    f(idx) = parfeval(pool, fptrRand, 1, 1000, 1);
end
maxFuture = afterEach(f, fptrMax, 1);
minFuture = afterAll(maxFuture, fptrMin, 1);
fetchOutputs(minFuture)
fetchOutputs(maxFuture)
```

## See also

[backgroundPool](../parallel/backgroundPool.md), [fetchOutputs](../parallel/fetchOutputs.md), [afterEach](../parallel/afterEach.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
