

# count

Computes the number of occurrences of an pattern.

## Syntax

- nbocc = count(str, pattern)
- nbocc = count(str, pattern,'IgnoreCase', true)
- nbocc = count(str, pattern,'IgnoreCase', false)

## Input argument

 - str - a string or cell of strings.
 - pattern - a string to find.

## Output argument

 - nbocc - a matrix of integer values.

## Description

<b>count</b> computes the number of occurrences of an pattern.

## Example

```Nelson
str = 'To make a mountain out of a molehill';
k = count(str, 'hill')
k = count(str, 'molehill')
k = count(str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = count(A, 'son')
```

## See also

[startsWith](startsWith.md), [endsWith](endsWith.md), [contains](contains.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



