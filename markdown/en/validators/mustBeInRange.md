# mustBeInRange

Checks that value is in the specified range.

## Syntax

- mustBeInRange(value, lower, upper)
- mustBeInRange(value, lower, upper, argPosition)
- mustBeInRange(value, lower, upper, boundflag1)
- mustBeInRange(value, lower, upper, boundflag1, argPosition)
- mustBeInRange(value, lower, upper, boundflag1, boundflag2)
- mustBeInRange(value, lower, upper, boundflag1, boundflag2, argPosition)
- C++: void mustBeInRange(const ArrayOfVector& args, const ArrayOf& lower, const ArrayOf& upper, const std::wstring& boundflag1, const std::wstring& boundflag2, int argPosition)

## Input argument

- value - a numeric value: scalar or matrix
- lower - a scalar numeric or logical value.
- upper - a scalar numeric or logical value.
- boundflag1 - 'inclusive', 'exclusice', 'exclude-lower' or 'exclude-upper'.
- boundflag2 - 'inclusive', 'exclusice', 'exclude-lower' or 'exclude-upper'.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            <b>mustBeInRange</b> checks that value is in the specified range or raise an error.</p>
<p>The only valid combination of the flags is <b>exclude-lower</b> with <b>exclude-upper</b>.</p>

## Example

```matlab
mustBeInRange(3, 2, 4)
```

## See also

[mustBeMember](../validators/mustBeMember.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
