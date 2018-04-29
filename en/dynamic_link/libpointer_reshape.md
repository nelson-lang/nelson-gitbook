

# libpointer_reshape

Reshapes libpointer dimensions.

## Syntax

- tf = h.reshape(X, Y)

## Input argument

 - h - a libpointer handle.
 - X - a scalar double: new X dimension.
 - Y - a scalar double: new Y dimension.

## Description


  <p>Set dimensions from libpointer object.</p>


## See also

[libpointer](libpointer.md).
## Example

```matlab
a = libpointer('doublePtr', eye(2, 2));
a.reshape(3, 3);
a.Value
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



