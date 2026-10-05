# waitbar

Creates or updates a wait bar figure.

## 📝 Syntax

- h = waitbar(x)
- h = waitbar(x, message)
- h = waitbar(x, h)
- h = waitbar(x, h, message)

## 📥 Input argument

- x - Progress value. Values below 0 are clipped to 0; values above 1 are clipped to 1.

## 📤 Output argument

- h - Graphics figure handle. The progress value is stored in UserData.

## 📄 Description


waitbar creates a progress figure or updates an existing one. The handle supports set, get, close, delete, and waitfor.

## 💡 Examples

Create and update a wait bar.

```matlab
h = waitbar(0.25, 'Starting');
pause(0.1);
h = waitbar(0.75, h, 'Almost done');
```
<img src="waitbar_example.svg" align="middle"/>
Update a wait bar inside a loop.

```matlab
h = waitbar(0, 'Processing');
for k = 1:3
  h = waitbar(k / 3, h, 'Processing');
end
close(h)
```


## 🔗 See also

[dialog](../gui/dialog.md), [uiprogressdlg](../gui/uiprogressdlg.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Updated dialog API help. |

<!--
## 👤 Author

Allan CORNET
-->
