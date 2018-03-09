

# COM_get

Get property value from COM interface.

## Syntax

- v = get(h, propertyname)
- v = COM_get(h, propertyname)
- v = h.propertyname

## Input argument

 - h - a COM object.
 - propertyname - a string: the property's name of COM object.

## Output argument

 - v - a nelson variable.

## Description


  <p>The function returns the value of the property specified in the string, propertyname.</p>


## Example

```Nelson
e = actxserver('Excel.Application');
get(e, 'Path')
e.Path
```

## See also

[COM_set](COM_set.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



