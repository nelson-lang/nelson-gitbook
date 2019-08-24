

# COM_ismethod

Determines if input is an existing COM object method.

## Syntax

- r = COM_ismethod(h, methodname)
- r = ismethod(h, methodname)

## Input argument

 - h - a COM object.
 - methodname - a string: method name tested as valid method for the COM object.

## Output argument

 - r - a logical.

## Description


  <description><b>r = ismethod(h, methodname)</b> returns true if the specified name is a method of the COM object h. Otherwise, it returns false.</description>


## Example

```matlab
e = actxserver('Excel.Application');
ismethod(e, 'Quit')
delete(e)
clear e
```

## See also

[COM_invoke](COM_invoke.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



