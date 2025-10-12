# helpdlg

Creates a help dialog box.

## Syntax

- h = helpdlg()
- h = helpdlg(text_help)
- h = helpdlg(text_help, title)
- h = helpdlg(text_help, title, 'on')

## Input argument

- text_help - a string or a cell of string: the help message.
- title - a string: the title of the dialog box.

## Output argument

- h - a QObject handle.

## Description

<p>
            errordlg creates an help dialog box.</p>

<p>
                h = helpdlg(text_help, title, 'on') specifies whether to replace an existing dialog box having the same name.</p>

## Examples

```matlab
h = helpdlg()
```

```matlab
h = helpdlg('help string')
```

```matlab
h = helpdlg('help string', 'dialog title')
```

```matlab
h = helpdlg('help string', 'dialog title')
h = helpdlg('help string', 'dialog title', 'on')
```

## See also

[warndlg](../gui/warndlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md), [msgbox](../gui/msgbox.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
