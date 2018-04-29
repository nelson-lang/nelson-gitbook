

# libpointer_isNull

Checks if libpointer handle points on NULL pointer.

## Syntax

- tf = isNull(h)
- tf = h.isNull()

## Input argument

 - h - a libpointer handle.

## Output argument

 - tf - a logical.

## Description


  <p>Checks if libpointer handle points on NULL pointer.</p>


## See also

[libpointer](libpointer.md).
## Example

```matlab
p = libpointer('int8Ptr', int8([3 4]));
p.isNull()
p2 = libpointer()
p2.isNull()
isNull(p2)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



