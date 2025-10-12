# keys

Keys of dictionary.

## Syntax

- k = keys(d)
- k = keys(d, 'cell')

## Input argument

- d - scalar: dictionary object.

## Output argument

- k - keys.

## Description

<p>
            k = keys(d) retrieves an array containing the keys of the specified dictionary, d.</p>

<p>
                k = keys(d, 'cell') optionally returns the keys as a cell array.</p>

## Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
k = keys(d)
k = keys(d, 'cell')

```

## See also

[dictionary](../dictionary/dictionary.md), [values](../dictionary/values.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
