

# if

conditional statement.

## Syntax

- if conditional_expression_1, statements_1, elseif conditional_expression_2, statements_2, else statements_N end

## Description


  <p><b>if</b> and <b>else</b> statements form a control structure for conditional execution.</p>


## Example

```matlab
i = 0;
if i == 0
  disp('ok')
elseif i == 1
  disp('not ok 1')
else
  disp('not ok 2')
end
```

## See also

[for](for.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



