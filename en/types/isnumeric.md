

# isnumeric

Return true if variable var is a numeric array.

## Syntax

- res = isnumeric(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isnumeric</b> returns a logical 1 if the argument is a numeric array and a logical 0 otherwise.
<p>List of numeric types:</p>
<p><b>single</b> : single precision</p>
<p><b>double</b> : double precision</p>
<p><b>int8</b>   : 8 bit signed integer</p>
<p><b>int16</b>  : 16 bit signed integer</p>
<p><b>int32</b>  : 32 bit signed integer</p>
<p><b>int64</b>  : 64 bit signed integer</p>
<p><b>uint8</b>  : 8 bit unsigned integer</p>
<p><b>uint16</b> : 16 bit unsigned integer</p>
<p><b>uint32</b> : 32 bit unsigned integer</p>
<p><b>uint64</b> : 64 bit unsigned integer</p>

	

## Examples

```Nelson
A = 1;
res = isnumeric(A)
```
```Nelson
B = single(1+i);
res = isnumeric(B)
```
```Nelson
C = logical(1);
res = isnumeric(C)
```

## See also

[islogical](islogical.md), [isinteger](isinteger.md), [isdouble](isdouble.md), [issingle](issingle.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



