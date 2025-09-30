# renameStructField

Rename field names of a struct or struct array.

## Syntax

- stOut = renameStructField(stIn, newNames)
- stOut = renameStructField(stIn, oldNames, newNames)

## Input argument

- stIn - A struct or struct array.
- newNames - a row vector characters, string array or cell array of strings representing the new field names. When used as the second argument, it must have the same number of elements as the number of fields in stIn.
- oldNames - a row vector characters, string array or cell array of strings representing the existing field names to rename. Ignored silently if the field name is not present in stIn.

## Output argument

- stOut - A struct or struct array.

## Description

<p>
            <b>renameStructField</b> renames the field names of a struct or struct array.</p>
<p>It supports renaming all field names at once or renaming selected field names individually.</p>

## Examples

```matlab
date_st = struct('day', 15, 'month' ,'August','year', 1974)
date_st = renameStructField(date_st, {'Day', 'Month', 'Year'})
```

```matlab
date_st = struct('day', 15, 'month' ,'August','year', 1974)
date_st = renameStructField(date_st, 'day', 'jour')
```

## See also

[struct](../data_structures/struct.md), [rmfield](../data_structures/rmfield.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.15.0  | initial version |

## Author

Allan CORNET
