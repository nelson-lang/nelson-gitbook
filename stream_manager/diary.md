



diary


diary

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


  <p><b>diary</b> creates a log of keyboard input and the resulting text output.</p>
  <p><b>diary</b> toggles diary mode on and off.</p>
  <p><b>diary('off')</b> stops recording the session in the diary file.</p>
  <p><b>diary('on')</b> starts recording a session in a file called 'diary' in the current working directory.</p>
  <p><b>diary('set', 'Diary', onoff)</b> allows to start or stop the diary.</p>
  <p><b>onoff = diary('get', 'Diary')</b> returns the state 'on' or 'off' of the diary.</p>
  <p><b>diary(filename)</b> records the session in the file named filename.</p>
  <p><b>filename = diary('get', 'DiaryFile')</b> returns filename used as diary.</p>
  <p><b>diary('set', 'DiaryFile', filename))</b> set the filename for the diary.</p>


## Example

```Nelson
filename = diary('get', 'DiaryFile')
onoff = diary('get', 'Diary')
```

## See also

history.md history.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



