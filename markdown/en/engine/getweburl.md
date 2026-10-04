# getweburl

Returns the current Web GUI URL and port.

## 📝 Syntax

- [url, port] = getweburl()

## 📤 Output argument

- url - Current Web GUI URL, or an empty string outside an active web launch.
- port - Current Web GUI port, or <b>0</b> outside an active web launch.

## 📄 Description

<b>getweburl()</b> returns the effective HTTP URL and port used by the current Web GUI session. A private webview launch still has an internal localhost port, but that URL is not printed at startup.

## 💡 Example

```matlab
[url, port] = getweburl()
```

## 🔗 See also

[getwebmode](../engine/getwebmode.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
