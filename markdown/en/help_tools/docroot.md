# docroot

Retrieve or update the root directory for Nelson Help system.

## 📝 Syntax

- r = docroot()
- r = docroot(new_docroot)

## 📥 Input argument

- new_docroot - a string: ' ', '.', or a URL.

## 📄 Description

<b>docroot</b> retrieves or updates the root directory for Nelson Help.

When called without an argument,<b>docroot</b> returns the current root directory for Nelson Help. By default, it returns the URL of the help website used by Nelson.

When called with an argument,<b>docroot</b> updates the root directory for Nelson Help.

<b>docroot('
')</b> resets the root directory for Nelson Help to the default value.

<b>docroot('.')</b> uses local help files and the local browser (restores behavior before v1.11.0).

## 💡 Example

```matlab

docroot()
doc rand
docroot('.')
doc rand
docroot('')

```

## 🔗 See also

[doc](../help_tools/doc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.14.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
