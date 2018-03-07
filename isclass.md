



isclass


isclass

Return true if variable var is a class object.

## Syntax

- res = isclass(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isclass</b> returns a logical 1 if the argument is a class object and a logical 0 otherwise.

## Example

```Nelson
A = 3;
res = isclass(A)
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
res = isclass(c)
```

## See also

class.md class, isstruct.html isstruct.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



