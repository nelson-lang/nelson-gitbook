

# strlength

Length of strings in cell of strings.

## Syntax

- len = strlength(ce)

## Input argument

 - ce - a string or cell of strings.

## Output argument

 - len - a matrix of integer values: length of strings.

## Description

<b>strlength</b> returns length of strings in cell of strings.

## Example

```matlab
str = 'To make a mountain out of a molehill';
k = strlength(str)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strlength(A)
```

## See also

[strcmp](strcmp.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



