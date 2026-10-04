# xslt

Transform XML using XSLT

## 📝 Syntax

- output_file = xslt(xml_source, xslt_file)
- output_file = xslt(xml_source, xslt_file, output_file)
- txt = xslt(xml_source, xslt_file, '-tostring')

## 📥 Input argument

- xml_source - a string containing an XML file path, or an XML document object.
- xslt_file - a string: path to the XSLT file.
- output_file - a string: path to the output file.

## 📤 Output argument

- output_file - the path to the generated output file.
- txt - the transformed text when '-tostring' is used.

## 📄 Description

xslt applies an XSLT stylesheet to XML input. Use '-tostring' to return the transformation result as text.

## 💡 Example

```matlab
xml_filename = [modulepath('xml'), '/tests/test_xml.xml'];
xsl_filename = [modulepath('xml'), '/tests/test_xml_to_text.xslt'];
txt = xslt(xml_filename, xsl_filename, '-tostring')
```

## 🔗 See also

[xmltransform](../xml/xmltransform.md), [xmlread](../xml/xmlread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
