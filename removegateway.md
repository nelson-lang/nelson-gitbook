



removegateway


removegateway

Removes dynamically builtin at runtime.

## Syntax

- removegateway(dyn_lib_path)

## Input argument

 - dyn_lib_path - a string: path of a dynamic library prepared for Nelson.

## Description


  <p><b>removegateway(dyn_lib_path)</b> removes dynamically builtin at runtime.</p>
  <p>The dynamic library loaded must have at least an C entry point <b>RemoveGateway</b>.</p>
  <p>If gateway was not loaded, no error or warning will be raised. If file does not exist an error is raised.</p>


## Example

removes time builtin
```Nelson
calendar
removegateway(modulepath(nelsonroot(), 'time', 'builtin'))
calendar
```

## See also

addgateway.md addgateway, gatewayinfo.md gatewayinfo.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



