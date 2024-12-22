# formattedDisplayText

Capture display output as string.

## Syntax

- str = formattedDisplayText(V)
- str = formattedDisplayText(V, Name, Value)

## Input argument

- V - Variable to return as string
- Name, Value - Name-Value Pair Arguments, Name: 'NumericFormat' or 'LineSpacing'.

## Output argument

- str - a string

## Description

  <p><b>str = formattedDisplayText(V)</b> returns the display output of <b>V</b> as a string.</p>
  <p>The string contains equivalent to <b>disp(V)</b>.</p>

## Example

```matlab
R = eye(3, 3)
str = formattedDisplayText(R)
R = rand(3, 3);
disp(R)
str = formattedDisplayText(R)
str = formattedDisplayText(R, 'NumericFormat', 'bank', 'LineSpacing', 'compact')
```

## See also

[display](display.md), [disp](disp.md), [format](format.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
