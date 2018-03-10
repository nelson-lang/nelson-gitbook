

# contains

checks if string contains with pattern.

## Syntax

- tf = contains(str, pattern)
- tf = contains(str, pattern,'IgnoreCase', true)
- tf = contains(str, pattern,'IgnoreCase', false)

## Input argument

 - str - a string or cell of strings.
 - pattern - a string to find.

## Output argument

 - tf - a matrix of logical.

## Description

<b>endsWith</b> contains <b>true</b> if <b>str</b> ends with <b>pattern</b>.

## Example

```matlab
str = 'To make a mountain out of a molehill';
k = contains (str, 'hill')
k = contains (str, 'molehill')
k = contains (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = contains(A, 'son')
```

## See also

[startsWith](startsWith.md), [endsWith](endsWith.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



