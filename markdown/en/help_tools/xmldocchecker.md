# xmldocchecker

Checks a xml documentation file.

## Syntax

- xmldocchecker(xmldocfilename)
- xmldocchecker(xmldocfilename, xsdfilename)
- [state, errors_detected, warnings_detected] = xmldocchecker(xmldocfilename)
- [state, errors_detected, warnings_detected] = xmldocchecker(xmldocfilename, xsdfilename)

## Input argument

- xmldocfilename - a string: xml document.
- xsdfilename - a string: xsd document.

## Output argument

- state - a logical: true if the document is valid, false otherwise.
- errors_detected - a cell of strings: errors detected.
- warnings_detected - a cell of strings: warnings detected.

## Description

<p>
            <b>xmldocchecker</b> is a tool to check that a xml document is valid.</p>
<p>Principally used to validate the structure and content of XML files against a defined schema.</p>

## Example

```matlab
xmldocchecker([nelsonroot(),'/module_skeleton/help/en_US/xml/nelson_sum.xml'])
```

## See also

[buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
