# isValidGraphicsProperty

Check property name is valid.

## Syntax

- tf = isValidGraphicsProperty(typename, propertyname)

## Input argument

- typename - a character vector or scalar string: 'axes', 'line', 'image', 'root', 'text', 'figure'.
- propertyname - a character vector or scalar string: property name to check.

## Output argument

- tf - a scalar logical.

## Description

  <p><b>isValidGraphicsProperty</b> checks is property name is existing for graphical object class.</p>
  <p>This function is an helper to check input parameters graphical functions.</p>

## Example

```matlab
tf = isValidGraphicsProperty('figure', 'Type')
tf = isValidGraphicsProperty('figure', 'TypeType')
```

## See also

[isprop](../handle/isprop.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
