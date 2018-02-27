



cell2struct


cell2struct

Creates a struct from a cell.

## Syntax

- st = cell2struct(ce, fields)
- st = cell2struct(ce, fields, dim)

## Input argument

 - ce - a cell.
 - fields - a cell of strings.
 - dim - dimension along cell is converted.

## Output argument

 - st - a struct array.

## Description


  <p><b>st = cell2struct(ce, fields)</b> creates a struct from a cell.</p>


## Example

```Nelson
ce = {85, 50, 68; 'Pierre', 'Anna', 'Roberto'}
fields = {'Height','Name'}
A = cell2struct (ce, fields, 1)
```

## See also

cell.md cell, struct.md struct, struct2cell.md struct2cell.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



