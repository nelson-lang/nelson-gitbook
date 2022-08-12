# audioplayer_set

Set object or interface property to specified value.

## Syntax

- set(h, propertyname, value)
- audioplayer_set(h, propertyname, value)
- h.propertyname = value

## Input argument

- h - a audioplayer object.
- propertyname - a string: the property's name of audioplayer object.
- value - a string, boolean, double ...

## Description

  <p>The function sets the property specified in the string propertyname to the given value.</p>

## Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Tag = 'my audio object'
```

## See also

[audioplayer_get](audioplayer_get.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
