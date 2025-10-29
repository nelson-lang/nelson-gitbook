# editor

call the embedded text editor.

## 📝 Syntax

- editor()
- editor(filename)
- editor('editor_command', cmd)

## 📥 Input argument

- filename - a string: filename to open.
- cmd - a string representing the command to launch your preferred code editor.

## 📄 Description

<b>editor</b> opens an existing file in the nelson's editor.

<b>editor</b> must be considered as internal and <b>edit</b> must be preferred.

Set another text editor as default: (example with VS code)

<code>editor('editor_command', 'code')</code>

To restore the default editor, use:

<code>editor('editor_command', '')</code>

Change text editor is persistent and will be saved in a configuration file.

## 💡 Example

```matlab
edit('edit')
if ispc()
  editor('editor_command ', 'notepad')
else
  editor('editor_command ', 'vim')
end
edit('edit')
% restore default editor
editor('editor_command ', '')

```

## 🔗 See also

[edit](../text_editor/edit.md).

## 🕔 History

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.10.0  | Option to change default text editor |

<!--
## 👤 Author

Allan CORNET
-->
