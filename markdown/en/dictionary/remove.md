# remove

Remove dictionary entries.

## Syntax

- db = remove(da, key)

## Input argument

- da - scalar: a dictionary object.
- key - scalar or array: key

## Output argument

- db - scalar: a dictionary object.

## Description

<p>
            db = remove(da, key) deletes the entry associated with the key from dictionary da.</p>

<p>
                d = remove(d, key) is equivalent to d[key] = [].</p>

## Example

```matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = remove(d, 2)

```

## See also

[dictionary](../dictionary/dictionary.md), [insert](../dictionary/insert.md), [lookup](../dictionary/lookup.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
