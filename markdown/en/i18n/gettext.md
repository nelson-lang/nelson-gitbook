# gettext

Get text translated into the current locale.

## 📝 Syntax

- translated\_string = gettext(your\_string)
- translated\_string = \_(your\_string))

## 📥 Input argument

- your\_string - a string: message to be translated.

## 📤 Output argument

- translated\_string - a string: message translated.

## 📄 Description


<b>translated\_string = gettext(your\_string)</b> gets the translation of a string<b>your\_string</b> to the current locale in the Nelson domain. 

<b>\_(your\_string)</b> is an alias of <b>gettext(your\_string)</b>.

## 💡 Example



```matlab
disp(_('function not found.'))
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
