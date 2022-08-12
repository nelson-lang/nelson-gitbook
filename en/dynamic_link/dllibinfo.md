# dllibinfo

Returns list of available symbols in an shared library.

## Syntax

- c = dllibinfo(lib)

## Input argument

- lib - a dllib handle: library already loaded.

## Output argument

- c - a cell of strings.

## Description

  <p><b>dllibinfo</b> returns list of available symbols in an shared library.</p>

## Example

```matlab
lib = dlopen([modulepath(nelsonroot(),'dynamic_link','bin'), '/libnlsDynamic_link', getdynlibext()])
c = dllibinfo(lib)
```

## See also

[dlopen](dlopen.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
