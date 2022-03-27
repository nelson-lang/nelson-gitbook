

# sscanf

Read formatted data from strings.

## Syntax

- R = sscanf(str, format)
- R = sscanf(str, format, sizeR)
- [R, count] = sscanf(...)
- [R, count, errmsg] = sscanf(...)
- [R, count, errmsg, nextindex] = sscanf(...)

## Input argument

 - str - character array or string scalar.
 - format - a string describing the format to used function, see fscanf for supported format.
 - sizeR - desired dimensions of R.

## Output argument

 - R - matrix or character vector.
 - count - number of elements read into output array.
 - errmsg - Error message.
 - nextindex - Position after last character scanned.

## Description


  <p>Read formatted data from strings.</p>


## Example

```matlab
str = "2.7183  3.1416  0.0073";
R = sscanf(str,'%f',[2 2])
```

## See also

[fscanf](fscanf.md), [sprintf](sprintf.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



