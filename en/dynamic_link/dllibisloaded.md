

# dllibisloaded

Checks if shared library is loaded.

## Syntax

- tf = dllibisloaded(libraryname)
- [tf, lib] = dllibisloaded(libraryname)

## Input argument

 - libraryname - a string: dynamic library name.

## Output argument

 - tf - a logical: true if library is already loaded.
 - lib - a dllib handle: library already loaded.

## Description


  <p><b>dllibisloaded</b> returns if share library is already loaded.</p>


## Example

```matlab
path_1 = [modulepath(nelsonroot(),'dynamic_link','bin'), '/libnlsDynamic_link', getdynlibext()];
r = dllibisloaded(path_1)
lib1 = dlopen(path_1);
[r, lib2] = dllibisloaded(path_1)
isequal(lib1, lib2)
```

## See also

[dlopen](dlopen.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



