# diary

Diary of a session.

## Syntax

- diary()
- diary(filename)
- diary('off')
- diary('on')
- onoff = diary('get', 'Diary')
- filename = diary('get', 'DiaryFile')
- diary('set', 'DiaryFile', filename)
- diary('set', 'Diary', onoff)

## Input argument

- onoff - a string: 'on' or 'off'.
- filename - a string: filename of the current diary.

## Output argument

- onoff - a string: 'on' or 'off'.
- filename - a string: filename to use for the diary.

## Description

<p>
            diary creates a log of keyboard input and the resulting text output.</p>

<p>
                diary toggles diary mode on and off.</p>

<p>
                    diary('off') stops recording the session in the diary file.</p>

<p>
                        diary('on') starts recording a session in a file called 'diary' in the current working directory.</p>

<p>
                            diary('set', 'Diary', onoff) allows to start or stop the diary.</p>

<p>
                                onoff = diary('get', 'Diary') returns the state 'on' or 'off' of the diary.</p>

<p>
                                    diary(filename) records the session in the file named filename.</p>

<p>
                                        filename = diary('get', 'DiaryFile') returns filename used as diary.</p>

<p>
                                            diary('set', 'DiaryFile', filename)) set the filename for the diary.</p>

## Example

```matlab
filename = diary('get', 'DiaryFile')
onoff = diary('get', 'Diary')
```

## See also

[history](../history_manager/history.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
