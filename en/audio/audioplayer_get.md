# audioplayer_get

Get property value from audioplayer interface.

## Syntax

- v = get(h, propertyname)
- v = audioplayer_get(h, propertyname)
- v = h.propertyname

## Input argument

- h - an audioplayer object.
- propertyname - a string: the property's name of audioplayer object.

## Output argument

- v - a nelson variable.

## Description

  <p>The function returns the value of the property specified in the string, propertyname.</p>

## Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Running
```

## See also

[audioplayer_set](audioplayer_set.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
