

# jsonprettyprint

format an JSON string.

## Syntax

- res = jsonprettyprint(txt)

## Input argument

 - txt - a valid JSON text.

## Output argument

 - res - a string: a formatted JSON text (human readable).

## Description


  <p><b>jsonprettyprint</b> formats a JSON text string to be human readable.</p>


## Example

```matlab
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4);
r = jsonencode(s)
jsonprettyprint(r)
```

## See also

[jsondecode](jsondecode.md), [jsonencode](jsonencode.md), [filewrite](../stream_manager/filewrite.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



