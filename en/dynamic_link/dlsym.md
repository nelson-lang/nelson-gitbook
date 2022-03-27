

# dlsym

Loads a C/Fortran symbol for an dynamic library.

## Syntax

- f = dlsym(lib, symbol_name, return_type, params_types)

## Input argument

 - lib - a dllib handle.
 - symbolname - a string: symbol to load.
 - return_type - a string: return type of the C/Fortran function.
 - params_types - a cell of strings: arguments using a special syntax with differents data types.

## Output argument

 - f - a dlsym handle.

## Description


  <p><b>dlsym</b> retrieves the address of an exported function as an dlsym handle.</p>
  <p>if <b>symbolname</b> not found, nelson try to find symbol equivalent based on these rules and in this order:</p>
  <p>
    <b>_symbolname</b>
  </p>
  <p>
    <b>symbolname</b>
  </p>
  <p>
    <b>symbolname_</b>
  </p>
  <p>
    <b>_symbolname_</b>
  </p>
  <p>
    <b>_SYMBOLNAME</b>
  </p>
  <p>
    <b>SYMBOLNAME</b>
  </p>
  <p>
    <b>SYMBOLNAME_</b>
  </p>
  <p>
    <b>_SYMBOLNAME_</b>
  </p>
  <p>symbol name used is available in prototype field of the returned handle.</p>
  <p>If multiple symbol names found, an error is raised with possible names.</p>
  <p/>
  <p>Warning: Uses wrong datatype definitions a foreign function can terminate unexpectedly.</p>


## Examples

```matlab
lib = dlopen([modulepath(nelsonroot(),'dynamic_link','bin'), '/libnlsDynamic_link', getdynlibext()]);
V = double([1 2;3 4]);
% C prototype:
% int dynlibTestMultiplyDoubleArrayWithReturn(double *x, int size)
f = dlsym(lib, 'dynlibTestMultiplyDoubleArrayWithReturn', 'int32', {'doublePtr', 'int32'});
[r1, r2] = dlcall(f, V, int32(numel(V)))
delete(f);
delete(lib);
```
Call C getpid function
```matlab
run([modulepath('dynamic_link'), '/examples/call_c.m']);
```
Call fortran DASUM (blas) function
```matlab
run([modulepath('dynamic_link'), '/examples/call_fortran.m']);
```

## See also

[dlcall](dlcall.md), [C/Nelson equivalent data types](C_datatype.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



