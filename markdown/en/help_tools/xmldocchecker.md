# xmldocchecker

Checks a xml documentation file.

## 📝 Syntax

- xmldocchecker()
- xmldocchecker(xmldocfilename)
- [state, errors\_detected, warnings\_detected] = xmldocchecker(xmldocfilename)

## 📥 Input argument

- xmldocfilename - a string: xml document.

## 📤 Output argument

- state - a logical: true if the document is valid, false otherwise.
- errors_detected - a cell of strings: errors detected.
- warnings_detected - a cell of strings: warnings detected.

## 📄 Description

<b>xmldocchecker</b> is a tool to check that a xml document is valid.

Principally used to validate the structure and content of XML files against nelson's help documentation.

<b>xmldocchecker()</b> check validity of all XML documentation files.

## 💡 Example

```matlab
xmldocchecker([nelsonroot(),'/module_skeleton/help/en_US/xml/nelson_sum.xml'])
```

## 🔗 See also

[xmlchecker](../xml/xmlchecker.md), [buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 History

| Version | 📄 Description                     |
| ------- | ---------------------------------- |
| 1.0.0   | initial version                    |
| 1.15.0  | Use xmlchecker for XML validation. |

<!--
## 👤 Author

Allan CORNET
-->
