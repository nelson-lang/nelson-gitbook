# diary

Diary of a session.

## 📝 Syntax

- diary()
- diary(filename)
- diary('off')
- diary('on')
- onoff = diary('get', 'Diary')
- filename = diary('get', 'DiaryFile')
- diary('set', 'DiaryFile', filename)
- diary('set', 'Diary', onoff)

## 📥 Input argument

- onoff - a string: 'on' or 'off'.
- filename - a string: filename of the current diary.

## 📤 Output argument

- onoff - a string: 'on' or 'off'.
- filename - a string: filename to use for the diary.

## 📄 Description

<b>diary</b> creates a log of keyboard input and the resulting text output.

<b>diary</b> toggles diary mode on and off.

<b>diary('off')</b> stops recording the session in the diary file.

<b>diary('on')</b> starts recording a session in a file called 'diary' in the current working directory.

<b>diary('set', 'Diary', onoff)</b> allows to start or stop the diary.

<b>onoff = diary('get', 'Diary')</b> returns the state 'on' or 'off' of the diary.

<b>diary(filename)</b> records the session in the file named filename.

<b>filename = diary('get', 'DiaryFile')</b> returns filename used as diary.

<b>diary('set', 'DiaryFile', filename))</b> set the filename for the diary.

## 💡 Example

```matlab
filename = diary('get', 'DiaryFile')
onoff = diary('get', 'Diary')
```

## 🔗 See also

[history](../history_manager/history.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
