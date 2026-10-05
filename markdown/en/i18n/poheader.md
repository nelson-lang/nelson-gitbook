# poheader

Generates po file header.

## 📝 Syntax

- ce = poheader(domain, language)

## 📥 Input argument

- domain - a string: domain message.
- language - a string: language, examples 'en\_US' or 'fr\_FR'.

## 📤 Output argument

- ce - a cell of string: po file header.

## 📄 Description


<b>ce = poheader(domain, language)</b> generates po file header.

## 💡 Example



```matlab
poheader('nelson', 'en_US')
```


## 🔗 See also

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
