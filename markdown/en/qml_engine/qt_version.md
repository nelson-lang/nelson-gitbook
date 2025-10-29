# qt_version

Returns Qt version used.

## 📝 Syntax

- v = qt_version()

## 📤 Output argument

- v - a string : valid path.

## 📄 Description

<b>v = qt_version()</b> returns the version number of Qt at run-time as a string (for example, "5.15.2").

## 💡 Example

```matlab
semver(qt_version(), '>5.15')
```

## 🔗 See also

[semver](../modules_manager/semver.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
