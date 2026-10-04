# asserts.checkerror

Check that a command raises an expected error.

## 📝 Syntax

- asserts.checkerror(command, expectedMessage)
- asserts.checkerror(command, expectedMessage, expectedIdentifier)
- [res, msg] = asserts.checkerror(command, expectedMessage)

## 📥 Input argument

- command - Command string evaluated in the current context.
- expectedMessage - Expected full error message.
- expectedIdentifier - Optional expected error identifier.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes only when the command raises the expected error.

Use asserts.throws when only a message substring must match.

## 💡 Examples

Check an expected error

```matlab
asserts.checkerror('cos', _('Wrong number of input arguments.'));
```

Capture missing error

```matlab
[res, msg] = asserts.checkerror('1 + 1', _('unused'));
```

## 🔗 See also

[asserts.throws](../assert_functions/asserts.throws.md), [asserts.noError](../assert_functions/asserts.noError.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
