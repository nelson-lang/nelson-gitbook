# writestruct

Write a structure as XML

## 📝 Syntax

- writestruct(s, filename)
- writestruct(s, filename, name, value)

## 📥 Input argument

- s - a structure or object to serialize.
- filename - a string: path to the output XML file.
- name, value - optional pairs: 'FileType', 'StructNodeName', 'AttributeSuffix', or 'PrettyPrint'.

## 📄 Description


writestruct creates an XML document from a structure and writes it to a file.

## 💡 Example



```matlab
s = struct();
s.name = 'Nelson';
s.value = 12;
filename = [tempdir(), 'writestruct_example.xml'];
writestruct(s, filename, 'StructNodeName', 'root');
fileread(filename)
```


## 🔗 See also

[readstruct](../xml/readstruct.md), [xmlwrite](../xml/xmlwrite.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
