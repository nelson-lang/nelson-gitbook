

# COM_invoke

Invoke method on COM object or interface.

## Syntax

- S = invoke(h, methodname, arg1, arg2, ...)
- S = COM_invoke(h, methodname, arg1, arg2, ...)

## Input argument

 - h - a COM object.
 - methodname - a string: the method name invoked on COM object.
 - arg1, arg2, ... - a Nelson variable of type double, int, boolean, string, ... used as parameters of COM function invoked.

## Output argument

 - S - a COM object or data.

## Description


  <p>If the method returns a COM interface, then ole_invoke returns a new COM object that represents the returned interface.</p>


## Example

```matlab
pWord = actxserver('Word.Application')
pWord.Visible = true
invoke(pWord, 'Quit')
delete(pWord)
clear pWord
```

## See also

[COM_get](COM_get.md), [COM_set](COM_set.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



