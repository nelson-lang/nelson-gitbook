# disp

Display a variable.

## Syntax

- disp(V)

## Input argument

- V - a variable

## Description

<p>
            disp(V) displays the value of the variable V.</p>

<p>
                disp uses current format setting to display numeric values.</p>

## Examples

```matlab
disp('Hello Nelson')
```

```matlab
disp(pi)
```

```matlab
disp(eye(3, 3))
```

disp always ends with a newline.

```matlab
disp('')
```

## See also

[display](../display_format/display.md), [fprintf](../stream_manager/fprintf.md), [format](../display_format/format.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
