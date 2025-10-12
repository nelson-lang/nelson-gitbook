# fieldnames

Returns field names of a structure or an handle.

## Syntax

- names = fieldnames(st)
- names = fieldnames(h)
- names = fieldnames(h, '-full')

## Input argument

- st - a structure
- h - a handle object

## Output argument

- names - a cell of strings

## Description

<p>
            names = fieldnames(st) returns a cell of strings with the names of the fields in the input structure.</p>

<p>
                names = fieldnames(h) returns a cell of strings with the names of the properties in the handle (without hidden).</p>

<p>
                    names = fieldnames(h, '-full') returns a cell of strings with the names of the all properties in the handle.</p>

## Example

```matlab
fieldnames(dir())
```

## See also

[getfield](../data_structures/getfield.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
