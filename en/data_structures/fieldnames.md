

# fieldnames

Returns field names of a structure or an handle.

## Syntax

- names = fieldnames(st)
- names = fieldnames(h)
- names = fieldnames(h, '-full')

## Input argument

 - st - a structure
 - h - a handle object

## Output argument

 - names - a cell of strings

## Description


  <p><b>names = fieldnames(st)</b> returns a cell of strings with the names of the fields in the input structure.</p>
  <p><b>names = fieldnames(h)</b> returns a cell of strings with the names of the properties in the handle (without hidden).</p>
  <p><b>names = fieldnames(h, '-full')</b> returns a cell of strings with the names of the all properties in the handle.</p>


## Example

```Nelson
fieldnames(dir())
```

## See also

[getfield](getfield.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



