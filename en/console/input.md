

# input

Display prompt and wait for user input.

## Syntax

- r = input(prompt_str)
- r = input(prompt_str, 's')

## Input argument

 - prompt_str - a string: temp. prompt displayed

## Output argument

 - r - a string

## Description


  <p>Display prompt and wait for user input. input returns a string which is the expression entered at keyboard.</p>


## Example

```Nelson
res = input('Please input a value ', 's');
r = execstr(['A = ', res, ';'], 'errcatch');
if (r)
  disp('It was a value.');
  disp(A)
else
 disp('It was NOT a value.');
end
```

## See also

[execstr](../core/execstr.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



