

# nargoutchk

Checks the number of output arguments.

## Syntax

- nargoutchk(minArgs, maxArgs)
- msg = nargoutchk(minArgs, maxArgs, numArgs)
- st = nargoutchk(minArgs, maxArgs, numArgs, 'struct')

## Input argument

 - minArgs - minimum number of accepted outputs (scalar integer value).
 - maxArgs - maximum number of accepted outputs (scalar integer value).
 - numArgs - number of function outputs (scalar integer value).

## Output argument

 - msg - a string: error message.
 - st - a struct with error message and identifier.

## Description


  <p><b>nargoutchk</b> checks the number of output arguments of an function.</p>


## Example

With an macro function:
```matlab
nargoutchk(1, 2, 3)
nargoutchk(1, 2, 3, 'struct')
```

## See also

[nargout](nargin.md), [narginchk](nargoutchk.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



