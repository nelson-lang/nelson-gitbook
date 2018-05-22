

# cast

Converts variable to a different data type

## Syntax

- R = cast(V, type_destination)
- R = cast(V, 'like', W)

## Input argument

 - V - a variable
 - type_destination - a string: name of destination data type.
 - W - a variable

## Output argument

 - R - a variable with new data type.

## Description


  <p><b>cast</b> converts variable to a different data type.</p>
  <p><b>R = cast(V, 'like', W)</b> converts varible V to sparsity and same data type than W.</p>


## Example

```matlab
r = cast([3.6 1.2 -2.4], 'like', int64(3))
r = cast([3.6 1.2 -2.4], 'int64')
```

## See also

[class](../types/class.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



