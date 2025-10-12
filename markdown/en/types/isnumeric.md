# isnumeric

Return true if variable var is a numeric array.

## Syntax

- res = isnumeric(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

        isnumeric returns a logical 1 if the argument is a numeric array and a logical 0
        otherwise.

<p>List of numeric types:</p>

<p>
            single : single precision</p>

<p>
            double : double precision</p>

<p>
            int8 : 8 bit signed integer</p>

<p>
            int16 : 16 bit signed integer</p>

<p>
            int32 : 32 bit signed integer</p>

<p>
            int64 : 64 bit signed integer</p>

<p>
            uint8 : 8 bit unsigned integer</p>

<p>
            uint16 : 16 bit unsigned integer</p>

<p>
            uint32 : 32 bit unsigned integer</p>

<p>
            uint64 : 64 bit unsigned integer</p>

## Examples

```matlab
A = 1;
res = isnumeric(A)
```

```matlab
B = single(1+i);
res = isnumeric(B)
```

```matlab
C = logical(1);
res = isnumeric(C)
```

## See also

[islogical](../types/islogical.md), [isinteger](../types/isinteger.md), [isdouble](../types/isdouble.md), [issingle](../types/issingle.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
