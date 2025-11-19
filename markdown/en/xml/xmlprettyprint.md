# xmlprettyprint

format an XML file.

## 📝 Syntax

- xmlprettyprint(xml_file)

## 📥 Input argument

- xml_file - a valid XML file.
- format_space - a boolean indicating whether to format with spaces (true) or not (false).

## 📤 Output argument

- res - a string: a formatted XML text (human readable).

## 📄 Description

<b>xmlprettyprint</b> formats a XML file to be human readable.

## 💡 Example

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
    xml_tmp = [tempdir(), 'test_xml.xml'];
    copyfile(xml_filename, xml_tmp);
    xmlprettyprint(xml_tmp, false);
    fileread(xml_tmp)
    xmlprettyprint(xml_tmp, true);
    fileread(xml_tmp)
end
```

## 🔗 See also

[jsonprettyprint](../json/jsonprettyprint.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
