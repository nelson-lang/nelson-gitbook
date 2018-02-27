



acquirevar


acquirevar

Acquires variable value from a specified variables scope.

## Syntax

- value = acquirevar(scope, variable_name)

## Input argument

 - scope - a string: 'global', 'base', 'caller', 'local'.
 - variable_name - a string: the name of symbol to search.

## Output argument

 - value - value of the variable searched.

## Description


  <p><b>acquirevar</b> search a symbol in a specific scope and copy the value in current scope.</p>


## Example

```Nelson
Y = 'variable in base scope';
function myfun()
  disp(acquirevar('base', 'Y')
endfunction
myfun()
```

## See also

assignin.md assignin, who.md who.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



