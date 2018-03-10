

# error

Raise an error message.

## Syntax

- error(msg)
- error(error_structure)

## Input argument

 - msg - a string.
 - error_structure - error message structure.

## Description


  <p><b>error</b> stops the current script execution.</p>
  <p><b>error('')</b> will be ignored and the script will continue to run.</p>


## Examples

```matlab
error('your error message.')
error('')
```
```matlab
1 / [1 2 3]
a = lasterror()
lasterror('reset')
b = lasterror()
error(a)
c = lasterror()
```

## See also

[lasterror](lasterror.md), [warning](warning.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



