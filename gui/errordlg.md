



errordlg


errordlg

Creates a error dialog box.

## Syntax

- h = errordlg()
- h = errordlg(text_error)
- h = errordlg(text_error, title)
- h = errordlg(text_error, title, 'on')

## Input argument

 - text_error - a string or a cell of string: the error message.
 - title - a string: the title of the dialog box.

## Output argument

 - h - a QObject handle.

## Description


  <p><b>errordlg</b> creates an error dialog box.</p>
  <p><b>h = errordlg(text_error, title, 'on')</b> specifies whether to replace an existing dialog box having the same name.</p>
  <p>
    <img src="errordlg_1_E21703F7.png"/>
  </p>


## Examples

```Nelson
h = errordlg()
```
```Nelson
h = errordlg('error string')
```
```Nelson
h = errordlg('error string', 'dialog title')
```
```Nelson
h = errordlg('error string', 'dialog title')
h = errordlg('error string', 'dialog title', 'on')
```

## See also

warndlg.md warndlg, questdlg.md questdlg, helpdlg.md helpdlg, msgbox.md msgbox.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



