# mustBeMember

Checks that value is member of specified array or issue error.

## Syntax

- mustBeMember(var, c)
- mustBeMember(var, c, argPosition)
- C++: void mustBeMember(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## Input argument

- var - a variable.
- c - a variable.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            <b>mustBeMember</b> checks that value is member of an array or issue error.</p>

## Example

```matlab
A = "red";
B = ["yellow","red","blue"];
mustBeMember(A,B)

```

## See also

[mustBeNonempty](../validators/mustBeNonempty.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
