# try

try/catch statement.

## Syntax

- try, statements_1, catch, statements_2, end
- try, statements_1, catch exception, statements_2, end

## Description

<p>
            <b>try</b> and <b>catch</b> statements are used for error handling and control in files.</p>
<p>
                <b>exception</b> is an <b>MException</b> object that allows you to identify the error.</p>
<p>The catch block assigns the current exception object to the variable in exception.</p>

## Examples

try/catch in a script file

```matlab
try
error('an error')
catch
  disp('error catched')
end
```

try/catch in a script file

```matlab
try
error('an error')
catch ME
  ME
end
```

## See also

[run](../core/run.md), [execstr](../core/execstr.md), [MException](../error_manager/MException.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
