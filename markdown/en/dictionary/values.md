# values

Values of dictionary.

## Syntax

- v = values(d)
- v = values(d, 'cell')

## Input argument

- d - scalar: dictionary object.

## Output argument

- v - values.

## Description

<p>
            v = values(d) retrieves an array containing the values of the specified dictionary, d.</p>

<p>
                v = values(d, 'cell') optionally returns the values as a cell array.</p>

## Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = values(d)
v = values(d, 'cell')

```

## See also

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
