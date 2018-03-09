

# who

List variables in memory.

## Syntax

- who
- s = who()
- who(scope)
- s = who(scope)

## Input argument

 - scope - a string: 'global', 'base', 'caller', 'local'.
 - variable_name - a string: variable name.

## Output argument

 - s - a cell of strings: list of variable's name.

## Description


  <p><b>who</b> displays current variable names.</p>


## Example

```Nelson
clear
who
A = 3
b= 3
who
s = who()
```

## See also

[what](../functions_manager/what.md), [clear](clear.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



