# parsestring

Parse a string.

## 📝 Syntax

- status = parsestring(str)

## 📥 Input argument

- str - a string: a string to parse.

## 📤 Output argument

- status - a string: 'script', 'function', 'error'.

## 📄 Description

<b>parsestring</b> parse a string and returns if it is a valid script, a valid function or an error.

## 💡 Example

```matlab
parsestring('1 + 1')
parsestring('1 +++ 1')
parsestring('1 +*+ 1')
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
