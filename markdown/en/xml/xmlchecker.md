# xmlchecker

Checks a xmlfile against xsd.

## 📝 Syntax

- xmlchecker(xmlfile, xsdfile)
- [state, errors\_detected, warnings\_detected] = xmlchecker(xmlfile, xsdfile)

## 📥 Input argument

- xmlfile - a string: path to the XML file.
- xsdfile - a string: path to the XSD file.

## 📤 Output argument

- state - a logical: true if the document is valid, false otherwise.
- errors_detected - a cell of strings: errors detected.
- warnings_detected - a cell of strings: warnings detected.

## 📄 Description

<b>xmlchecker</b> is a tool to check that a xml file is valid against a xsd file.

## 💡 Example

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
if isfile(xml_filename)
  xsd_filename = [modulepath('xml'), '/tests/test_xml.xsd'];
  [is_valid, errors] = xmlchecker(xml_filename, xsd_filename);
end
```

## 🔗 See also

[xmldocchecker](../help_tools/xmldocchecker.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
