# xmlprettyprint

format an XML file.

## 📝 Syntax

- xmlprettyprint(xml_file)

## 📥 Input argument

- xml_file - a valid XML file.

## 📤 Output argument

- res - a string: a formatted XML text (human readable).

## 📄 Description

<b>xmlprettyprint</b> formats a XML file to be human readable.

## 💡 Example

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
    xmlprettyprint(xml_filename, false);
    fileread(xml_filename)
    xmlprettyprint(xml_filename, true);
    fileread(xml_filename)
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
