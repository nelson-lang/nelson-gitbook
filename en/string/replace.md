

# replace

Replaces strings in another.

## Syntax

- res = replace(str, old, new)

## Input argument

 - str - a string or cell of strings.
 - old - a string or cell of strings to find.
 - new - a string or cell of strings.

## Output argument

 - res - a string or cell of strings.

## Description


  <p><b>replace</b> replaces strings in another.</p>
  <p><b>replace</b> and <b>strrep</b> replace strings but <b>replace</b> is recommended.</p>


## Example

```matlab
r = replace('This is a string.', 'is', 'is not')
r = replace({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
```

## See also

[strrep](strrep.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



