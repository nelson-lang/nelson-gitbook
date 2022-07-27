

# QObject_get

Retrieve a property value from an QObject handle.

## Syntax

- R = get(h, property_name)

## Input argument

 - h - an QObject handle.
 - property_name - a string: property name.

## Output argument

 - R - The data type of the return value depends on the invoked method.

## Description


  <p><b>R = get(h, property_name)</b> returns the value of property asked.</p>


## See also

[QObject_set (set)](QObject_set.html), [get](../handle/get.md).
## Example

```matlab
h = errordlg();
h.visible % or get(h, 'visible')
h.windowTitle % or get(h, 'windowTitle')
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



