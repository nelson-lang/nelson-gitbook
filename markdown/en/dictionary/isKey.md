# isKey

Check if dictionary contains key

## Syntax

- tf = isKey(d)

## Input argument

- d - scalar: dictionary object.

## Output argument

- tf - scalar logical: true if key, false if not.

## Description

<p>
            tf = isKey(d, key) returns a logical true if the specified key exists in the configured dictionary, and a logical false if it does not.</p>

<p>If d is an unconfigured dictionary, isKey throws an error.</p>

<p>If key is an array of multiple keys, then tf is a logical array of the same size.</p>

## Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isKey(d, "John")
tf = isKey(d, ["biil" , "Yannis")
```

## See also

[dictionary](../dictionary/dictionary.md), [configureDictionary](../dictionary/configureDictionary.md), [keys](../dictionary/keys.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
