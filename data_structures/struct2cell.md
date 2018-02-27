



struct2cell


struct2cell

Creates a cell from a structure.

## Syntax

- ce = struct2cell(st)

## Input argument

 - st - a structure.

## Output argument

 - ce - a cell.

## Description


  <p><b>ce = struct2cell(st)</b> returns a new cell from the structure.</p>


## Example

```Nelson
names = {'Pierre', 'Anna', 'Roberto'}
values =  {45, 42, 13}
st = struct ('name', names, 'age', values);
ce = struct2cell(st)
```

## See also

cell.md cell, struct.md struct, fieldnames.md fieldnames.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



