# dlclose

Removes dllib object.

## Syntax

- dllib_delete(h)
- delete(h)
- dlclose(h)

## Input argument

- h - a handle: an dllib object.

## Description

<p>
            dlclose(h) or delete(h) releases dllib object.</p>

<p>Do not forget to clear h afterward.</p>

## Example

```matlab
path_ref = modulepath('dynamic_link', 'builtin');
lib = dlopen(path_ref)
isvalid(lib)
dlclose(lib); // or delete(lib)
isvalid(lib)
```

## See also

[dlopen](../dynamic_link/dlopen.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
