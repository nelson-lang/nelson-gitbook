

# celldisp

Display cell array contents.

## Syntax

- celldisp(C)
- celldisp(C, name)

## Input argument

 - C - cell array.
 - name - displayed name of cell array.

## Description


  <p><b>celldisp</b> recursively display the contents of a cell array.</p>


## Example

```matlab
C = {2, 22, 'ff', {331, 332}};
celldisp(C)
celldisp(C, 'var_name')
```

## See also

[disp](${display_format).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



