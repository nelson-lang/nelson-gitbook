# asserts.warning

Check that a command emits the expected warning.

## 📝 Syntax

- asserts.warning(command, expectedWarning)
- asserts.warning(command, expectedMessage, expectedIdentifier)
- [res, msg] = asserts.warning(command, expectedWarning)

## 📥 Input argument

- command - Command string evaluated in the current context.
- expectedWarning - Expected warning message substring or warning identifier.
- expectedMessage - Expected warning message.
- expectedIdentifier - Expected warning identifier.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when the command emits a matching warning.

The two-argument form accepts either the warning message text or the warning identifier.

## 💡 Examples

Expected warning text

```matlab
asserts.warning('warning(''Nelson:asserts:example'', ''expected warning'');', 'expected warning');
```

Capture a missing warning

```matlab
[res, msg] = asserts.warning('1 + 1', 'expected warning');
```

## 🔗 See also

[asserts.warningFree](../assert_functions/asserts.warningFree.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
