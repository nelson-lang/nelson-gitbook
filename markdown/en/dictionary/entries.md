# entries

Key-value pairs of dictionary.

## Syntax

- E = entries(d)
- E = entries(d, format)

## Input argument

- d - scalar: dictionary object.
- format - format: string scalar or character vector: 'cell', 'struct', 'table' (not yet implemented) .

## Output argument

- E - table, struct or cell.

## Description

<p>
            E = entries(d) retrieves a table containing the key-value pairs from the given dictionary, d.</p>

<p>
                E = entries(d) currently not implemented.</p>

<p>
                    E = entries(d, format) specifies the output format as either a table or a structure. For instance, entries(d, "struct") returns a structure containing the key-value pairs of d. This option is useful for data types that are not compatible with tables.</p>

## Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
E = entries(d, 'struct')
E = entries(d, 'cell')

```

## See also

[dictionary](../dictionary/dictionary.md), [lookup](../dictionary/lookup.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
