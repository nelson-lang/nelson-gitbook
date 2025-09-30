# pyargs

Change default environment of Python interpreter.

## Syntax

- pyargs
- pa = pyargs(Name, Value)

## Input argument

- Name - a string, or row characters array
- Value - variable value

## Output argument

- pa - pyargs object.

## Description

<p>
            <b>pyargs(Name, Value, ...)</b> generates one or multiple keyword arguments for Python functions.</p>
<p>In Python, a keyword argument is a value associated with an identifier.</p>
<p>Ensure to position <b>pyargs</b> as the last input argument when calling a Python function.</p>

## Example

```matlab
pa = pyargs('A', 1)
```

## See also

[pyrun](../python_engine/pyrun.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.3.0   | initial version |

## Author

Allan CORNET
