



struct


struct

Creates a struct.

## Syntax

- st = struct()
- st = struct([])
- st = struct(field, value)
- st = struct(field, value, field2, value2, ..., fieldn, valuen)

## Input argument

 - field, field2, ... , fieldn - strings : field names, valid names are same than variable identifiers.
 - value, value2, ..., valuen - all data types supported by Nelson.

## Output argument

 - st - a struct

## Description


  <p><b>struct</b> returns a structure.</p>


## Examples

```Nelson
struct()
```
```Nelson
struct([])
```
```Nelson
date_st = struct('day', 15, 'month' ,'August','year', 1974)
```
Other way to create a struct:
```Nelson
date_st.day = 15
date_st.month = 'August'
date_st.year = 1974)
```

## See also

cell.md cell, isstruct.md istruct.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



