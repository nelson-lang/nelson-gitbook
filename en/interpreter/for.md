

# for

# parfor

for loop.

## Syntax

- for variable = expression, statements, end
- for variable, statements, end

## Description


  <p><b>for</b> loop executes a set of statements with an index variable looping through each element in a vector.</p>
  <p><b>parfor</b> is currently an alias on <b>for</b> keyword.</p>


## Examples

```matlab
for i = 1:10, disp(i), end
```
```matlab
for i = [1, 2; 3 4], disp(i), disp('next'), end
```

## See also

[while](while.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



