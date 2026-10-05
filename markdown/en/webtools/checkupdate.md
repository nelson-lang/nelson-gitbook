# checkupdate

Check update for Nelson's application

## 📝 Syntax

- checkupdate()
- checkupdate('url', http\_url\_to\_check)
- checkupdate('forcenogui', true\_or\_false)
- checkupdate('url', http\_url\_to\_check, 'forcenogui', true\_or\_false)
- checkupdate('forcenogui', true\_or\_false)
- [res, msg, url\_new\_version] = checkupdate(...)

## 📥 Input argument

- http\_url\_to\_check - a string: URL to check the latest Nelson's application version.
- true\_or\_false - a logical: true (force CLI), false (detect default mode).

## 📤 Output argument

- res - a logical: result of the update check.
- msg - a string: message providing information about the update check.
- url\_new\_version - a string: URL to download the new version if available.

## 📄 Description


<b>checkupdate</b> checks if a new version of Nelson is available and opens a URL to download it. 

This function is primarily used through the menu action available in the main window's help section.

## 💡 Example



```matlab
checkupdate
```


## 🔗 See also

[webread](../webtools/webread.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.2.0   | Initial version |

<!--
## 👤 Author

Allan CORNET
-->
