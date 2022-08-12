# questdlg

Creates a question dialog box.

## Syntax

- buttonname = questdlg(question)
- buttonname = questdlg(question, title)
- buttonname = questdlg(question, title, default)
- buttonname = questdlg(question, title, text1, default)
- buttonname = questdlg(question, title, text1, text2, default)
- buttonname = questdlg(question, title, text1, text2, text3, default)

## Input argument

- question - a string or a cell of string: the question.
- title - a string: the title of the dialog box.
- text1 - a string: text of button 1.
- text2 - a string: text of button 2.
- text3 - a string: text of button 3.
- default - a string: text of selected button by default.

## Output argument

- buttonname - a string: text of the clicked button or ''.

## Description

  <p><b>questdlg</b> displays a string using a question dialog box and return the caption of the activated button.</p>
  <p>The dialog has three default buttons: 'Yes', 'No', 'Cancel' with 'Yes' as default.</p>

## Examples

```matlab
res = questdlg('What is the answer to the ultimate question of life, the universe and everything ?', 'A question for geeks', '41', '42', '43', '42')
```

```matlab
res = questdlg ('Easy ?', 'Jeff', 'No', 'Okay', 'Okay')
```

```matlab
res = questdlg('How are you ?', 'Health', 'Fine', 'Good', 'sick', 'Fine')
```

```matlab
res = questdlg({'Is', 'this', 'a', 'multi line', 'test ?'}, 'Test :)')
```

## See also

[warndlg](warndlg.html), [errordlg](errordlg.html), [helpdlg](helpdlg.html), [msgbox](msgbox.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
