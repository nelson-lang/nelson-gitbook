# parsefile

Parse a Nelson file.

## 📝 Syntax

- status = parsefile(filename)

## 📥 Input argument

- filename - a string: a filename to parse.

## 📤 Output argument

- status - a string: 'script', 'function', 'error'.

## 📄 Description

<b>parsefile</b> parse a file and returns if it is a valid script, a valid function or an error.

## 💡 Example

```matlab
parsefile([nelsonroot(), '/etc/startup.m'])
parsefile([nelsonroot(), '/modules/data_structures/functions/cellstr.m'])
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
