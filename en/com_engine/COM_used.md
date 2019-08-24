

# COM_used

Returns list of current used COM handle.

## Syntax

- r = COM_used()

## Output argument

 - h - a vector of COM handle.

## Description


  <p>Returns list of current used COM handle.</p>


## See also

[COM_set (set)](COM_set.md), [COM_get (get)](COM_get.md).
## Example

```matlab
delete(COM_used())
e = actxserver('Excel.Application');
used = COM_used()
delete(used)
used = COM_used()
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



