# struct

Creates a struct.

## Syntax

- st = struct()
- st = struct([])
- st = struct(object)
- st = struct(field, value)
- st = struct(field, value, field2, value2, ..., fieldn, valuen)

## Input argument

- field, field2, ... , fieldn - strings : field names, valid names are same than variable identifiers.
- value, value2, ..., valuen - all data types supported by Nelson.
- object - an object created with 'class' builtin.

## Output argument

- st - a struct

## Description

  <p><b>struct</b> returns a structure.</p>

## Examples

```matlab
struct()
```

```matlab
struct([])
```

```matlab
date_st = struct('day', 15, 'month' ,'August','year', 1974)
```

Other way to create a struct:

```matlab
date_st.day = 15
date_st.month = 'August'
date_st.year = 1974)
```

## See also

[cell](cell.md), [istruct](../types/isstruct.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
