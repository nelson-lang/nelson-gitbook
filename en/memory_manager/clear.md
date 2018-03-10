

# clear

Remove variable from workspace.

## Syntax

- clear
- clear variable_name
- clear global
- clear all
- clear variables
- clear functions
- clear variable_name_1 ... variable_name_N
- clear global variable_name

## Input argument

 - variable_name - a string: variable name.
 - global - clears all global variables.
 - all - clears all variables in all scopes
 - variables - clears all variables in current scope.
 - functions - clears cache of macros functions and associated persistent variables.

## Description


  <p><b>clear</b> is used to remove variable given by its name.</p>
  <p><b>clear</b> can also delete handle object if a function handle_TYPE_clear is defined.</p>


## Example

```matlab
A = 3;
who
clear A
who
A
```

## See also

[who](who.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



