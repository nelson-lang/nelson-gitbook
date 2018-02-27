



class


class

Return classname of object or creates a named object.

## Syntax

- name = class(var)
- obj = class(st, strname)

## Input argument

 - var - a variable
 - st - a struct
 - strname - a string: classname desired

## Output argument

 - name - a string
 - obj - an object of type 'strname' based on struct 'st'

## Description


  <p><b>name = class(var)</b> returns the class of var variable.</p>
  <p>Standard classes are:</p>
  <p>'cell'</p>
  <p>'struct'</p>
  <p>'single'</p>
  <p>'double'</p>
  <p>'logical'</p>
  <p>'char'</p>
  <p>'int8'</p>
  <p>'int16'</p>
  <p>'int32'</p>
  <p>'int64'</p>
  <p>'uint8'</p>
  <p>'uint16'</p>
  <p>'uint32'</p>
  <p>'uint64'</p>
  <p>'function_handle'</p>


## Examples

```Nelson
A = 3;
res = class(A)
```
```Nelson
C = [1 ; 3];
res = class(C)
```
```Nelson
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
class(c)
```

## See also

isa.md isa, isdouble.html isdouble, isfloat.md isfloat, ischar.md ischar, isstruct.md isstruct, iscell.md iscell.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



