

# cancelAll

Stop all functions running in the background.

## Syntax

- cancel(fevalQueue)

## Input argument

 - fevalQueue - FevalQueue object: scalar.

## Description


  <p><b>cancelAll(fevalQueue)</b> stops all running or queued elements of the background pool.</p>


## Example

```matlab
fptr = str2func('pause');
pool = backgroundPool;
pool.FevalQueue
f = parfeval(pool, fptr, 0, Inf);
f
pool.FevalQueue
cancelAll(pool.FevalQueue)
pool.FevalQueue
f
```

## See also

[pause](../core/pause.md), [cancel](cancel.md), [parfeval](parfeval.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



