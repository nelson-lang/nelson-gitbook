# values

Values of dictionary.

## Syntax

- v = values(d)
- v = values(d, 'cell')

## Input argument

- d - scalar: dictionary object.

## Output argument

- v - values.

## Description

  <p><b>v = values(d)</b> retrieves an array containing the values of the specified dictionary, <b>d</b>.</p>
  <p><b>v = values(d, 'cell')</b> optionally returns the values as a cell array.</p>

## Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = values(d)
v = values(d, 'cell')
```

## See also

[dictionary](dictionary.md), [keys](keys.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
