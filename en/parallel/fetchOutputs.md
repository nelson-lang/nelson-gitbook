

# fetchOutputs

Retrieve results from function running in the background pool.

## Syntax

- [y1, ... , ym] = fetchOutputs(f)

## Input argument

 - f - FevalFuture object

## Output argument

 - y1, ... , ym - outputs

## Description


  <p><b>[y1, ... , ym] = fetchOutputs(f)</b> retrieves m results from a <b>Future</b> array <b>f</b>.</p>
  <p/>
  <p><b>fetchOutputs</b> waits for the function associated to <b>f</b> to finish before retrieving results.</p>
  <p>If <b>fetchOutputs</b> is called, Read property of each element in <b>f</b> is set to true.</p>


## Examples

sequantial version
```matlab
tic()
R1 = magic(5000);
R2 = magic(5000);
toc()
size(R1)
```
Parallel version
```matlab
b = backgroundPool()
tic()
fptr = str2func('magic');
f1 = parfeval(b, fptr, 1, 5000);
f2 = parfeval(b, fptr, 1, 5000);
b
r1 = fetchOutputs(f1);
r2 = fetchOutputs(f2);
toc()
size(r1)
f1
f2
```

## See also

[parfeval](parfeval.md), [backgroundPool](backgroundPool.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



