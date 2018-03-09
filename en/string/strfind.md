

# strfind

Find a string in another.

## Syntax

- occ = strfind(str, pattern)
- occ = strfind(str, pattern,'ForceCellOutput', ouput)

## Input argument

 - str - a string or cell of strings.
 - pattern - a string to find.
 - output - a logical.

## Output argument

 - occ - a cell or matrix of integer values: occurences position.

## Description

<b>strfind</b> find a string in another.

## Example

```Nelson
str = 'To make a mountain out of a molehill';
k = strfind (str, 'in')
k= strfind(str, ' ')
k = strfind ({'abababada', 'beabebe', 'ab'}, 'aba')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strfind(A, 'o')

str = 'No pain no gain.';
k = strfind(str,'in','ForceCellOutput',true)
k = strfind(str,'in','ForceCellOutput',false)
```

## See also

[strcmp](strcmp.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



