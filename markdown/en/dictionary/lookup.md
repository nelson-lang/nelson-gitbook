# lookup

Find value in dictionary by key.

## Syntax

- value = lookup(d, key)
- value = lookup(d, key, 'FallbackValue', fallback)

## Input argument

- d - scalar: dictionary object.
- key - key type must match or be convertible to the data type of keys in d.
- fallback - scalar: Fallback value

## Output argument

- value - value.

## Description

<p>
            value = lookup(d, key) retrieves the value associated with the given key in dictionary d.</p>

<p>If the key does not exist, an error is raised.</p>

<p>
                value = lookup(d, key) is equivalent to value = d[key].</p>

<p>
                    value = lookup(d, key, 'FallbackValue', fallback) specifies a fallback value to return if the key is not found in d.</p>

<p>
                        lookup function only validates the fallback if it is needed. An error is raised only if the key is not found and no valid fallback is provided.</p>

## Example

```matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = lookup(d,[3,5], 'FallbackValue', "Orange")
```

## See also

[dictionary](../dictionary/dictionary.md), [remove](../dictionary/remove.md), [insert](../dictionary/insert.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
