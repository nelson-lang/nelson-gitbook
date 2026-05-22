# lastwarn

Returns last recorded warning message.

## 📝 Syntax

- last_message = lastwarn()
- [last\_message, last\_identifier] = lastwarn()
- lastwarn(' ')
- lastwarn(new_message)
- lastwarn(new_message, new_identifier)
- [last\_message, last\_identifier] = lastwarn(' ')
- [last\_message, last\_identifier] = lastwarn(new_message)
- [last\_message, last\_identifier] = lastwarn(new_message, new_identifier)

## 📤 Output argument

- last_message - string: last warning message.
- last_identifier - string: identifier.

## 📄 Description

<b>last_message = lastwarn()</b> returns a string containing the last warning message.

<b>lastwarn('
')</b> clears last warning.

## 💡 Example

```matlab

    [1:3]:3
    lastwarn
    [msg, id] = lastwarn()
    lastwarn('')
    [msg, id] = lastwarn()

```

## 🔗 See also

[error](../error_manager/error.md), [warning](../error_manager/warning.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
