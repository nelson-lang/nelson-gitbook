# display

Show information about variable or result of expression.

## Syntax

- display(V)
- display(V, name)

## Input argument

- V - Result of executing a statement or expression
- name - a character vector: variable name displayed.

## Description

<p>
            <b>display(V)</b> displays information about the variable <b>V</b>.</p>
<p>Nelson calls <b>display</b> function whenever an object is referred to in a statement that is not terminated by a semicolon.</p>

## Examples

```matlab
display(33, 'Hello')
```

```matlab
display('Hello Nelson')
```

```matlab
display(pi)
```

```matlab
A = eye(3, 3); disp(A)
```

## See also

[disp](../display_format/disp.md), [fprintf](../stream_manager/fprintf.md), [format](../display_format/format.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
