

# persistent

Persistent variable.

## Syntax

- persistent variable_name
- persistent('variable_name')
- persistent  variable_name1, ...,  variable_nameN

## Input argument

 - variable_name - a string: variable name.

## Description


  <p><b>persistent</b> defines a variable defined by his name <b>variable_name</b> as persistent in a function.</p>
  <p>Before to use a persistent variable, it is necessary to initializ value.</p>


## Examples

function to define:
```matlab
function r = test_persistent_function()
 persistent calls;
 if isempty(calls)
    calls = 0;
 end 
 disp(['nb calls to test_persistent_function: ', int2str(calls)]);
 r= calls;
 calls = calls + 1;
end
```
calls test_persistent_function
```matlab
for i = 1:30
  r = test_persistent_function();
end
```

## See also

[clear](clear.md), [who](who.md), [global](global.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



