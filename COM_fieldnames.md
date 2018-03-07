



COM_fieldnames


COM_fieldnames

Returns the properties name of an COM object.

## Syntax

- l = COM_fieldnames(h)
- l = fieldnames(h)

## Input argument

 - h - a COM object.

## Output argument

 - l - a cell of strings.

## Description


  <description><b>fieldnames</b> returns a cell of strings with properties name.</description>


## Example

```Nelson
e = actxserver('Excel.Application');
fieldnames(e)
delete(e)
clear e
```

## See also

COM_set.md COM_set.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



