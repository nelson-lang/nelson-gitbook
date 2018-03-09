

# lasterror

Returns last recorded error message.

## Syntax

- last_err = lasterror()
- lasterror('reset')
- lasterror(error_struct)

## Output argument

 - last_err - error message structure.

## Description


  <p><b>l = lasterror()</b> returns a structure containing the last error message and information as an struct.</p>
  <p><b>lasterror('reset')</b> clears last error.</p>
  <p><b>lasterror(error_struct)</b> set last error.</p>


## Examples

```Nelson
state = execstr('xxxxxx', 'errcatch')
if ~state
  l = lasterror()
end
```
```Nelson
state = execstr('xxxxxx', 'errcatch')
l = lasterror();
lasterror('reset');
lasterror()
lasterror(l);
lasterror()
```

## See also

[error](error.md), [warning](warning.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



