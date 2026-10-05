# history

history manager.

## 📝 Syntax

- history()
- c = history()
- s = history('size')
- f = history('filename')
- l = history('enable\_save')
- c = history('get')
- history('display')
- history('save')
- history('load')
- history('clear')
- history('duplicated')
- history('saveafter')
- history('removeexit')
- history('size', new\_size)
- history('enable\_save', true\_false)
- history('delete', lines)
- history('append', str)
- history('filename', name)
- history('load', filename\_history)
- history('save', filename\_history)
- history('duplicated', true\_false)
- history('removeexit', true\_false)
- history('get', lines)
- history('saveafter', nb\_commands)

## 📥 Input argument

- new\_size - a integer value: new size max of history.
- true\_false - a logical.
- lines - a integer value or a vector of size 1x2.
- str - a string.
- name - a string: new default history filename
- filename\_history - a string: filename
- nb\_commands - a integer value: number of commands.

## 📤 Output argument

- c - a cell of strings.
- l - a logical.
- s - a integer value.
- f - a string.

## 📄 Description


<b>history()</b> displays the current Nelson history. 

<b>c = history()</b> returns the current Nelson history in a cell of strings. 

<b>s = history('size')</b> returns history size max. 

<b>f = history('filename')</b> returns the history filename. 

<b>l = history('enable\_save')</b> returns the history manager state. 

<b>c = history('get')</b> returns the current Nelson history in a cell of strings. 

<b>history('display')</b> displays the current Nelson history. 

<b>history('save')</b> saves current history file. 

<b>history('load')</b> load current history file. 

<b>history('clear')</b> clears history. 

<b>history('duplicated')</b> get state about save of consecutive duplicated commands. 

<b>history('saveafter')</b> get state about save the history after nth commands. 

<b>history('removeexit')</b> get state about do not save exit in history file. 

<b>history('size', new\_size)</b> set history size max with<b>new\_size</b>. 

<b>history('enable\_save', true\_false)</b> set the history manager state: false for 'off', true for 'on'. 

<b>history('delete', lines)</b> deletes lines by index: a scalar value or a vector 1x2. 

<b>history('append', str)</b> append command to history. 

<b>history('filename', name)</b> set the history filename. 

<b>history('load', filename\_history)</b> load history file. 

<b>history('save', filename\_history)</b> save history file 

<b>history('duplicated', true\_false)</b> set state about consecutive duplicated commands. true remove duplicated. 

<b>history('removeexit', true\_false)</b> set state about do not save exit in history file. 

<b>history('get', lines)</b> returns the current Nelson history in a cell of strings by index: a scalar value or a vector 1x2. 

<b>history('saveafter', nb\_commands)</b> saves the history file after<b>nb\_commands</b> statements are added to the file. 

<b>Tips</b>: You can share your history file in the cloud by adding a few lines of code to your user startup file. 

If nelson launched with '--nouserstartup' option, history file will be not loaded at startup and not saved at exit.

## 💡 Examples

Example to share your history file in OneDrive cloud

```matlab
OneDrivePath = getenv('OneDrive');
if (strcmp(OneDrivePath, '') == false)
  NelsonOneDrivePath = [OneDrivePath, '/Nelson'];
  mkdir(NelsonOneDrivePath);
  NelsonOneDrivePathFilename = [NelsonOneDrivePath, '/', 'Nelson.history'];
 history('filename', NelsonOneDrivePathFilename);
  history('load', NelsonOneDrivePathFilename);
end
```


```matlab
history()
c = history()
```


## 🔗 See also

[diary](../stream_manager/diary.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
