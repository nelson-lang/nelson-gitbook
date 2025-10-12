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
            d = configureDictionary(keyType, valueType) initializes an empty dictionary that enforces keys of type keyType and values of type valueType.</p>

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
