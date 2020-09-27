

# switch

switch statement.

## Syntax

- switch(expression), case test_expression_1, statements, case test_expression_2, statements, otherwise statements, end

## Description


  <p><b>switch</b> statement is used to selective execute code based on the value of either scalar value or a string.</p>
  <p><b>otherwise</b> clause is optional.</p>


## Examples

demo_switch.nlf
```matlab
function c = demo_switch(a)
 switch(a)
    case {'hello', 'world'}
      c = 'message';
    case {'red', 'green', 'blue'}
      c = 'color';
    otherwise
      c = 'not sure';
  end
endfunction
```
```matlab
demo_switch('hello')
demo_switch('red')
demo_switch('?')
```

## See also

[for](for.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



