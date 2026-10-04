# xmlwrite

Serialize an XML document object

## 📝 Syntax

- txt = xmlwrite(doc)
- xmlwrite(filename, doc)

## 📥 Input argument

- doc - an XML document object returned by xmlread, or XML text.
- filename - a string: path to the output XML file.

## 📤 Output argument

- txt - a string containing serialized XML.

## 📄 Description

xmlwrite converts an XML document object to text or writes it to a file.

## 💡 Example

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
doc = xmlread(xml_filename);
out_filename = [tempdir(), 'xmlwrite_example.xml'];
xmlwrite(out_filename, doc);
isfile(out_filename)
```

## 🔗 See also

[xmlread](../xml/xmlread.md), [writestruct](../xml/writestruct.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
