# xslt

Transform XML using XSLT

## 📝 Syntax

- output\_file = xslt(xml\_source, xslt\_file)
- output\_file = xslt(xml\_source, xslt\_file, output\_file)
- txt = xslt(xml\_source, xslt\_file, '-tostring')

## 📥 Input argument

- xml\_source - a string containing an XML file path, or an XML document object.
- xslt\_file - a string: path to the XSLT file.
- output\_file - a string: path to the output file.

## 📤 Output argument

- output\_file - the path to the generated output file.
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

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
