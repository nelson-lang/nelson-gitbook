# dlclose

Removes dllib object.

## Syntax

- dllib_delete(h)
- delete(h)
- dlclose(h)

## Input argument

- h - a handle: an dllib object.

## Description

  <p><b>dlclose(h)</b> or <b>delete(h)</b> releases dllib object.</p>
  <p>Do not forget to clear h afterward.</p>

## Example

```matlab
path_ref = [modulepath(nelsonroot(),'dynamic_link','bin'), '/libnlsDynamic_link', getdynlibext()];
lib = dlopen(path_ref)
isvalid(lib)
dlclose(lib); // or delete(lib)
isvalid(lib)
```

## See also

[dlopen](dlopen.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
