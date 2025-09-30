# isglobal

Checks if a variable is global.

## Syntax

- state = isglobal(variable_name)

## Input argument

- variable_name - a string: variable name.

## Output argument

- state - a logical: true if variable is global.

## Description

<p>
            <b>isglobal</b> returns true if <b>variable_name</b> has been declared as global variable and false otherwise.</p>

## Example

```matlab
y = 3;
isglobal y
global b
b = 3
isglobal b
clear global b
isglobal b
```

## See also

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md), [global](../memory_manager/global.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
