# assert\_checkerror

Historical name for asserts.checkerror.

## 📝 Syntax

- assert\_checkerror(command, expectedMessage)
- assert\_checkerror(command, expectedMessage, expectedIdentifier)
- [res, msg] = assert\_checkerror(command, expectedMessage)

## 📥 Input argument

- command - Command string evaluated in the current context.
- expectedMessage - Expected full error message.
- expectedIdentifier - Optional expected error identifier.

## 📤 Output argument

- res - true if the expected error is produced, false otherwise.
- msg - Assertion failure message, empty on success.

## 📄 Description


<b>assert\_checkerror</b> is kept for compatibility. 

For complete documentation, use [asserts.checkerror](../assert_functions/asserts.checkerror.md). 

Use [asserts.throws](../assert_functions/asserts.throws.md) when only a message substring must match.

## 💡 Examples

Historical call

```matlab
assert_checkerror('cos', _('Wrong number of input arguments.'));
```
Canonical call

```matlab
asserts.checkerror('cos', _('Wrong number of input arguments.'));
```


## 🔗 See also

[asserts.checkerror](../assert_functions/asserts.checkerror.md), [asserts.throws](../assert_functions/asserts.throws.md), [asserts.noError](../assert_functions/asserts.noError.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | documented as historical name for asserts.checkerror |

<!--
## 👤 Author

Allan CORNET
-->
