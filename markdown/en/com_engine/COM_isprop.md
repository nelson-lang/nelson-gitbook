# COM_isprop

Determines if input is an existing COM object property.

## Syntax

- r = COM_isprop(h, propertyname)
- r = isprop(h, propertyname)

## Input argument

- h - a COM object.
- propertyname - a string: property name tested as valid property for the COM object.

## Output argument

- r - a logical.

## Description

r = isprop(h, propertyname) returns true if the specified name is a property of the COM object h. Otherwise, it returns false.

## Example

```matlab
e = actxserver('Excel.Application');
isprop(e, 'Window')
delete(e)
clear e

```

## See also

[COM_ismethod](../com_engine/COM_ismethod.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
