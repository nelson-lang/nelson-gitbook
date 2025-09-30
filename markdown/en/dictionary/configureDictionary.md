# configureDictionary

Generate a dictionary with defined key and value types.

## Syntax

- d = configureDictionary(keyType, valueType)

## Input argument

- keyType - Key data type: string scalar or character vector.
- valueType - Value data type: string scalar or character vector.

## Output argument

- d - scalar: a dictionary object.

## Description

<p>
            <b>d = configureDictionary(keyType, valueType)</b> initializes an empty dictionary that enforces keys of type <b>keyType</b> and values of type <b>valueType</b>.</p>

## Example

```matlab
d1 = configureDictionary("string", "single")
d2 = configureDictionary("cell", "struct")
```

## See also

[dictionary](../dictionary/dictionary.md), [isConfigured](../dictionary/isConfigured.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
