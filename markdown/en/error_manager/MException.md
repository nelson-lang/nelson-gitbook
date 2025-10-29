# MException

Matrix Exception information.

## 📝 Syntax

- ME = MException(identifier, message)
- ME = MException('last')
- MException('reset')

## 📥 Input argument

- identifier - a string: error identifier.
- message - a string.

## 📤 Output argument

- ME - a MException object.

## 📄 Description

All Nelson code that detects an error and throws an exception constructs an MException object.

identifier includes one or more component fields and a mnemonic field (example: 'nelson:matrix:empty')

<b>ME = MException('last')</b> return last exception.

<b>MException('reset')</b> clears last exception.

## 💡 Example

```matlab
ME = MException('nelson:identifier', 'your error message.')
throw(ME)
```

## 🔗 See also

[error](../error_manager/error.md), [try](../interpreter/try.md), [throw](../error_manager/throw.md), [rethrow](../error_manager/rethrow.md), [throwAsCaller](../error_manager/throwAsCaller.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
