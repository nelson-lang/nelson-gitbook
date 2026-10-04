# help

Help for functions in Command Window.

## 📝 Syntax

- help function_name
- help('function_name')
- txt = help('function_name')

## 📥 Input argument

- function_name - a string: function name, documentation keyword, alias or external XML page name

## 📤 Output argument

- txt - a string: help text

## 📄 Description

<b>help('function_name')</b> displays the help text for the functionality specified.

The shipped JSON help index is searched first. If the keyword is absent, help searches XML documentation of currently loaded external modules under help/language/xml, including subdirectories. A page can be found by its keyword, keyword_alias or XML file name without the extension. Namespaced APIs and standalone guides do not need an identically named macro.

For each external module, the current language is tried first, then the default language if that page is missing. More recently loaded external modules are searched first. External XML pages must have an xmldoc root and no DOCTYPE. Unreadable or malformed pages are skipped; the existing macro-comment fallback remains available when no page is found.

An external page displays its full description, syntax, input/output descriptions and examples as text. Examples are never executed. No global help index is generated or modified, and unloaded modules are no longer searched. XML files must remain present; installing only an HTML help archive is not sufficient for this command. The graphical documentation viewer remains a separate command.

## 💡 Example

```matlab
help sin
```

## 🔗 See also

[doc](../help_tools/doc.md).

## 🕔 History

| Version | 📄 Description                                                                                        |
| ------- | ----------------------------------------------------------------------------------------------------- |
| 2.0.0   | Read XML documentation from loaded external modules, including standalone guides and namespaced APIs. |
| 1.15.0  | initial version                                                                                       |

<!--
## 👤 Author

Allan CORNET
-->
