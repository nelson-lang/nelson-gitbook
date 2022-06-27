

# parfeval

Run function in background.

## Syntax

- f = parfeval(bPool, fptr, n, x1, ..., xm)

## Input argument

 - bPool - backgroundPool object returned by backgroundPool().
 - fptr - Function handle: Function to run.
 - n - Number of output arguments.
 - x1, ..., xm - Input arguments, specified as a comma-separated list of variables or expressions.

## Output argument

 - f - FevalFuture object.

## Description


  <p><b>f = parfeval(bPool, fptr, n, x1, ..., xm)</b> starts the function fptr to run in the background.</p>
  <p>backgroundPool has <b>NumWorkers</b> available. If there are more functions scheduled, functions wait than one entry is available in pool.</p>
  <p><b>parfeval</b> runs the function <b>fptr</b> on a background worker.</p>


## Example

```matlab
b = backgroundPool()
fptr = str2func('cos');
f = parfeval(b, fptr, 1, 5);
r = fetchOutputs(f)
```

## See also

[backgroundPool](backgroundPool.md), [fetchOutputs](fetchOutputs.md), [feval](../functions_manager/feval.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



