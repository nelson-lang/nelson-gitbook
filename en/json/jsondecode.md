

# jsondecode

decodes a JSON string to Nelson object.

## Syntax

- res = jsondecode(json_str)

## Input argument

 - json_str - a json string.

## Output argument

 - res - a nelson variable converted from JSON.

## Description


  <p><b>jsondecode</b> converts JSON object field names to Nelson structure field names</p>


Bibliography

http://www.rfc-editor.org/rfc/rfc7159.txt

## Examples

```Nelson
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4)
r = jsonencode(s)
r2 = jsondecode(r)
```
```Nelson
jsondecode(fileread([modulepath('json'), '/examples/patient.json']))
```

## See also

[jsonencode](jsonencode.md), [fileread](../stream_manager/fileread.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



