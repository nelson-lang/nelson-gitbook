# lookandfeel

default current application look and feel.

## 📝 Syntax

- r = lookandfeel()
- ce = lookandfeel('available')
- p = lookandfeel(lf)
- ss = lookandfeel('stylesheet')
- pp = lookandfeel('stylesheet', ss)

## 📥 Input argument

- lf - a string: look and feel to apply.
- ss - a string: style sheet to apply.

## 📤 Output argument

- r - a string: current look and feel.
- ce - a cell of strings: list of look and feel available.
- ss - a string: current style sheet applied.
- p - a string: previous look and feel applied.
- pp - a string: previous style sheet applied.

## 📄 Description

<b>lookandfeel</b> manages look and feel Nelson application.

## 💡 Examples

```matlab

currentlf = lookandfeel();
lfs = lookandfeel('available')
for lf = lfs'
  lookandfeel(lf{1})
  sleep(10);
end
lookandfeel(currentlf)

```

```matlab

currentstylesheet = lookandfeel('stylesheet')
stylefilename = [modulepath('gui'), '/resources/darkstyle.qss'];
edit(stylefilename)
newstyle = fileread(stylefilename);
previousstylesheet = lookandfeel('stylesheet', newstyle)
sleep(10);
lookandfeel('stylesheet', previousstylesheet)

```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
