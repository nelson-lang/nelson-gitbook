

# strtrim

Remove leading and trailing whitespace.

## Syntax

- res = strtrim(str)

## Input argument

 - str - a string, a cell of strings or a string array.

## Output argument

 - res - a string without leading or trailing whitespace.

## Description


  <p><b>strtrim</b> removes leading and trailing whitespace.</p>
  <p><b>strtrim</b> does not remove all significant whitespace (only characters ' \t\n\r\f\v' removed).</p>


## Examples

```matlab
strtrim(' Nel Son')
```
```matlab
strtrim(" Nel Son")
```
```matlab
strtrim([' Nel Son', char(160)])
```

## See also

[deblank](deblank.md), [toupper](toupper.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



