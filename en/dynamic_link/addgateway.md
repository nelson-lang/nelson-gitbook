

# addgateway

Adds dynamically builtin at runtime.

## Syntax

- addgateway(dyn_lib_path)

## Input argument

 - dyn_lib_path - a string: path of a dynamic library prepared for Nelson.

## Description


  <p><b>addgateway(dyn_lib_path)</b> adds dynamically builtin at runtime.</p>
  <p>The dynamic library loaded must have at least an C entry point <b>AddGateway</b>.</p>
  <p>If gateway was already loaded, no error or warning will be raised.</p>


## Example

Add gateway for string module:
```matlab
addgateway(modulepath(nelsonroot(), 'time', 'builtin'))
```

## See also

[removegateway](removegateway.md), [gatewayinfo](gatewayinfo.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



