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
            execstr executes Nelson instructions given in a string.</p>

<p>
                execstr(str, 'nocatch') is equivalent to execstr(str)
            </p>

<p>
                execstr can be used as alternative to try ... catch ... end block.</p>

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
