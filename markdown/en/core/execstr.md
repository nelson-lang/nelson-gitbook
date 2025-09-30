# execstr

Execute Nelson code in strings.

## Syntax

- execstr(str)
- execstr(str, 'nocatch')
- bSuccess = execstr(str, 'errcatch')

## Input argument

- str - a string: Nelson instruction to execute

## Output argument

- bSuccess - a logical: true or false if command fails

## Description

<p>
            <b>execstr</b> executes Nelson instructions given in a string.</p>
<p>
                <b>execstr(str, 'nocatch')</b> is equivalent to <b>execstr(str)</b>
            </p>
<p>
                <b>execstr</b> can be used as alternative to <b>try ... catch ... end</b> block.</p>

## Examples

```matlab
execstr('b = ''hello''; disp(b);')
```

This example will fail and returns an error message.

```matlab
execstr('b = yyyy')
```

This example will fail and returns an error message.

```matlab
execstr('b = yyyy', 'nocatch')
```

This example will not fail and return false.

```matlab
r = execstr('b = yyyy', 'errcatch')
```

## See also

[run](../core/run.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
