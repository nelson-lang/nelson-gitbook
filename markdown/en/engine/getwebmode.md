# getwebmode

Returns the effective Nelson WebView launch mode.

## 📝 Syntax

- mode = getwebmode()

## 📤 Output argument

- mode - <b>'webview'</b>, <b>'server'</b>, or <b>'none'</b>.

## 📄 Description

<b>getwebmode()</b> reports how the current Nelson WebView desktop was effectively launched. It returns <b>'none'</b> outside an active web launch.

## 💡 Example

```matlab
getwebmode()
```

## 🔗 See also

[getnelsonmode](../engine/getnelsonmode.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
