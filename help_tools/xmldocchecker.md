



xmldocchecker


xmldocchecker

Checks a xml documentation file.

## Syntax

- xmldocchecker(xmldocfilename)
- [errors_detected, warnings_detected] = xmldocchecker(xmldocfilename)

## Input argument

 - xmldocfilename - a string: xml document.

## Output argument

 - errors_detected - a cell of strings: errors detected.
 - warnings_detected - a cell of strings: warnings detected.

## Description


  <p><b>xmldocchecker</b> is a tool to check that a xml document is valid.</p>


## Example

```Nelson
xmldocchecker([nelsonroot(),'/module_skeleton/help/en_US/xml/nelson_sum.xml'])
```

## See also

buildhelp.md buildhelp, buildhelpweb.md buildhelpweb.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET


