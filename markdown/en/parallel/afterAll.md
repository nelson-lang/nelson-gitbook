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

  <p><b>B = afterAll(F, fcn, n)</b> returns a AfterAllFuture object <b>B</b>.</p>
  <p>Function <b>fcn</b> is automatically runned after all elements in the Future array <b>F</b> were finished.</p>
  <p>If any of the elements in <b>F</b> encounters an error, the <b>Error</b> property of <b>B</b> contains an error.</p>

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

[backgroundPool](backgroundPool.md), [fetchOutputs](fetchOutputs.md), [afterEach](afterEach.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
