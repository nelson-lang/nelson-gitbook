# iscom

Determine whether input is COM or ActiveX object.

## Syntax

- r = iscom(h)

## Input argument

- h - a nelson variable.

## Output argument

- r - a logical: true or false.

## Description

  <p><b>r = iscom(h)</b> returns logical true if handle h is a COM or a Microsoft® ActiveX® object. Otherwise, it returns false.</p>

## Example

```matlab
pWord = actxserver('Word.Application')
iscom(pWord)
delete pWord
iscom(pWord)
clear pWord
```

## See also

[actxserver](actxserver.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
