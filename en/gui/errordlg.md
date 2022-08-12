# errordlg

Creates a error dialog box.

## Syntax

- h = errordlg()
- h = errordlg(text_error)
- h = errordlg(text_error, title)
- h = errordlg(text_error, title, mode)

## Input argument

- text_error - a string or a cell of string: the error message.
- title - a string: the title of the dialog box.
- mode - a string: 'mode', 'non-modal', 'replace'.

## Output argument

- h - a QObject handle.

## Description

  <p><b>errordlg</b> creates an error dialog box.</p>
  <p><b>h = errordlg(text_error, title, 'replace')</b> specifies whether to replace an existing dialog box having the same title.</p>
  <p>
    <img src="errordlg_1_E21703F7.png"/>
  </p>

## Examples

```matlab
h = errordlg()
```

```matlab
h = errordlg('error string')
```

```matlab
h = errordlg('error string', 'dialog title')
```

```matlab
h = errordlg('error string', 'dialog title')
h = errordlg('error string', 'dialog title', 'on')
```

## See also

[warndlg](warndlg.html), [questdlg](questdlg.html), [helpdlg](helpdlg.html), [msgbox](msgbox.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
