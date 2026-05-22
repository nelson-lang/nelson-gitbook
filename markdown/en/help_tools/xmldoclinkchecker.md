# xmldoclinkchecker

Checks unresolved cross-references in Nelson help XML files.

## 📝 Syntax

- xmldoclinkchecker()
- xmldoclinkchecker(xmldocfilename)
- xmldoclinkchecker(xmldocdirectory)
- [state, errors\_detected, warnings\_detected] = xmldoclinkchecker(target)

## 📥 Input argument

- target - a string: XML file or directory to check.

## 📤 Output argument

- state - a logical: true if all references are resolved, false otherwise.
- errors_detected - a cell array of strings: unresolved link references and related errors.
- warnings_detected - a cell array of strings: warnings detected during validation.

## 📄 Description

<b>xmldoclinkchecker</b> validates <code>

<link linkend="..."/>
</code> references used in Nelson help XML pages.

It checks references in a single XML file, a directory tree, or all installed module help XML files when called without arguments.

This function is useful to detect broken cross-references before building HTML/Markdown help outputs.

The link target uses the XML page file name without the <code>.xml</code> extension, optionally prefixed with a module name such as <code>${dynamic_link}havecompiler</code>.

## 💡 Examples

Check links in one help XML file.

```matlab
[state, errors_detected] = xmldoclinkchecker([modulepath('help_tools'), '/help/en_US/xml/xmldocchecker.xml'])
```

Check all links in a module help XML directory.

```matlab
xmldoclinkchecker([modulepath('help_tools'), '/help/en_US/xml'])
```

## 🔗 See also

[xmldocchecker](../help_tools/xmldocchecker.md), [xmldocbuild](../help_tools/xmldocbuild.md), [buildhelp](../help_tools/buildhelp.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
