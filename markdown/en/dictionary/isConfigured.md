# isConfigured

Check if dictionary has types assigned to keys and values.

## Syntax

- tf = isConfigured(d)

## Input argument

- d - scalar: dictionary object.

## Output argument

- tf - scalar logical: true if configured, false if not.

## Description

<p>
            tf = isConfigured(d) returns a logical true if the specified dictionary is configured, and a logical false if it is not.</p>

<p>A dictionary is considered configured when it has assigned types for its keys and values. Adding entries to an unconfigured dictionary will configure it.</p>

## Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isConfigured(d)
d2 = dictionary()
tf = isConfigured(d2)


```

## See also

[dictionary](../dictionary/dictionary.md), [configureDictionary](../dictionary/configureDictionary.md), [insert](../dictionary/insert.md), [values](../dictionary/values.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
