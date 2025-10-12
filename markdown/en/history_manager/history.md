# history

history manager.

## Syntax

- history()
- c = history()
- s = history('size')
- f = history('filename')
- l = history('enable_save')
- c = history('get')
- history('display')
- history('save')
- history('load')
- history('clear')
- history('duplicated')
- history('saveafter')
- history('removeexit')
- history('size', new_size)
- history('enable_save', true_false)
- history('delete', lines)
- history('append', str)
- history('filename', name)
- history('load', filename_history)
- history('save', filename_history)
- history('duplicated', true_false)
- history('removeexit', true_false)
- history('get', lines)
- history('saveafter', nb_commands)

## Input argument

- new_size - a integer value: new size max of history.
- true_false - a logical.
- lines - a integer value or a vector of size 1x2.
- str - a string.
- name - a string: new default history filename
- filename_history - a string: filename
- nb_commands - a integer value: number of commands.

## Output argument

- c - a cell of strings.
- l - a logical.
- s - a integer value.
- f - a string.

## Description

<p>
            history() displays the current Nelson history.</p>

<p>
                c = history() returns the current Nelson history in a cell of strings.</p>

<p>
                    s = history('size') returns history size max.</p>

<p>
                        f = history('filename') returns the history filename.</p>

<p>
                            l = history('enable_save') returns the history manager state.</p>

<p>
                                c = history('get') returns the current Nelson history in a cell of strings.</p>

<p>
                                    history('display') displays the current Nelson history.</p>

<p>
                                        history('save') saves current history file.</p>

<p>
                                            history('load') load current history file.</p>

<p>
                                                history('clear') clears history.</p>

<p>
                                                    history('duplicated') get state about save of consecutive duplicated commands.</p>

<p>
                                                        history('saveafter') get state about save the history after nth commands.</p>

<p>
                                                            history('removeexit') get state about do not save exit in history file.</p>

<p>
                                                                history('size', new_size) set history size max with new_size.</p>

<p>
                                                                    history('enable_save', true_false) set the history manager state: false for 'off', true for 'on'.</p>

<p>
                                                                        history('delete', lines) deletes lines by index: a scalar value or a vector 1x2.</p>

<p>
                                                                            history('append', str) append command to history.</p>

<p>
                                                                                history('filename', name) set the history filename.</p>

<p>
                                                                                    history('load', filename_history) load history file.</p>

<p>
                                                                                        history('save', filename_history) save history file</p>

<p>
                                                                                            history('duplicated', true_false) set state about consecutive duplicated commands. true remove duplicated.</p>

<p>
                                                                                                history('removeexit', true_false) set state about do not save exit in history file.</p>

<p>
                                                                                                    history('get', lines)returns the current Nelson history in a cell of strings by index: a scalar value or a vector 1x2.</p>

<p>
                                                                                                        history('saveafter', nb_commands) saves the history file after nb_commands statements are added to the file.</p>

<p>
                                                                                                            Tips: You can easily share your history file in the cloud by adding few lines code in your user startup file.</p>

<p>If nelson launched with '--nouserstartup' option, history file will be not loaded at startup and not saved at exit.</p>

## Examples

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

## See also

[diary](../stream_manager/diary.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
