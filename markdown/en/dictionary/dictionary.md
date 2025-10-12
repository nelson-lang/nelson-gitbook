# dictionary

Object that maps unique keys to values.

## Syntax

- d = dictionary()
- d = dictionary(d1)
- d = dictionary(keys, values)
- d = dictionary(key1, value1, ... , keyN, valueN)

## Input argument

- d1 - a dictionary or py.dict object.
- keys - scalar or array
- values - scalar, array or cell array
- key1, value1, ... , keyN, valueN - Key-value pairs

## Output argument

- d - scalar: a dictionary object.

## Description

<p>
            d = dictionary(): This command initializes an empty dictionary with no keys or values.</p>

<p>Initially, the dictionary has no specific data types assigned to its keys or values. Once entries are added, the data types for keys and values are determined based on these entries.</p>

<p></p>

<p>
                d = dictionary(keys, values): This creates a dictionary using the provided keys and values.</p>

<p>The resulting dictionary is a 1-by-1 scalar object. If a key appears multiple times, only the last corresponding value is kept. If the values parameter is a scalar, each key is assigned this value. When keys and values are arrays, they must have matching sizes, resulting in key-value pairs accordingly.</p>

<p></p>

<p>Dictionaries are typed according to their entries. All keys must share the same data type, and all values must share a different, consistent data type. If a new entry has parts that don't match the existing data types, Nelson will attempt to convert them. Keys and values can have different data types, and character row vectors are converted to string scalars.</p>

<p></p>

<p>
                    d = dictionary(key1, value1, ... , keyN, valueN): This syntax creates a dictionary with the specified key-value pairs.</p>

<p>If a key is repeated, only the last key-value pair for that key is kept.</p>

<p>Removing an Entry from a Dictionary:</p>

<p>
                        d(keys) = []: This command removes the entry associated with the specified key from the dictionary.</p>

<p></p>

<p>Assigning Values to Entries:</p>

<p>
                            d(keys) = newValues: This command assigns the elements of newValues to the entries specified by the corresponding keys.</p>

<p>If a specified key does not exist in the dictionary, a new entry is created. If a key appears multiple times, only the last assigned value is kept. Assigning a new value to an existing key overwrites its previous value.</p>

<p></p>

<p>Looking Up a Value:</p>

<p>
                                bvalue = d(keys): This command retrieves the value corresponding to the specified keys from the dictionary.</p>

<p></p>

<p>Storing Multiple Data Types in a Dictionary:</p>

<p>
                                    value = d{keys} retrieves the value associated with keys and returns the contents of the cell. If keys is an array, a comma-separated list of the corresponding values is returned. An error is thrown if the dictionary's values are configured to a datatype other than cell.</p>

<p>
                                        d{keys} = values assigns cells containing the elements of values to the entries specified by the corresponding keys. An error is thrown if the dictionary's values are configured to a datatype other than cell.</p>

<p></p>

## Examples

```matlab
d = dictionary()
d('apple') = 1
d('banana') = 2
d('kiwi') = 3
d('banana') = []

```

```matlab
Values = {{'a','b'},["ff", "cc"],struct,[1 2 3 4]}
Keys = ["letters" "words" "a structure" "numeric array"]
d = dictionary(Keys, Values)
d{"numeric array"}
d{"a new entry"} = 'table'
```

dictionary conversion nelson -- python

```matlab
wheels = [1 2 3];
names = ["Monocycle" "Bicycle" "Tricycle"];
d = dictionary(wheels, names)
R = pyrun("A = d", "A", 'd', d)
dictionary(R)

```

## See also

[lookup](../dictionary/lookup.md), [remove](../dictionary/remove.md), [insert](../dictionary/insert.md), [keyMatch](../dictionary/keyMatch.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
