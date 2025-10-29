# jsondecode

decodes a JSON string to Nelson object.

## 📝 Syntax

- res = jsondecode(json_str)
- res = jsondecode(json_str, '-file')

## 📥 Input argument

- json_str - a json string.
- '-file' - a string, first argument is the file path.

## 📤 Output argument

- res - a nelson variable converted from JSON.

## 📄 Description

<b>jsondecode</b> converts JSON object field names to Nelson structure field names

## 📚 Bibliography

http://www.rfc-editor.org/rfc/rfc7159.txt

## 💡 Examples

```matlab
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4)
r = jsonencode(s)
r2 = jsondecode(r)
```

```matlab

jsondecode([modulepath('json'), '/examples/patient.json'], '-file')

```

## 🔗 See also

[jsonencode](../json/jsonencode.md), [fileread](../stream_manager/fileread.md).

## 🕔 History

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.15.0  | second argument added for file input |
| 1.15.0  | simdjson library used                |

<!--
## 👤 Author

Allan CORNET
-->
