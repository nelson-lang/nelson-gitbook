# asserts.noError

Check that a command completes without error.

## 📝 Syntax

- asserts.noError(command)
- [res, msg] = asserts.noError(command)

## 📥 Input argument

- command - Command string evaluated in the current context.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when evaluating command does not raise an error. 

With outputs, unexpected errors are returned as assertion failures instead of being raised directly.

## 💡 Examples

Command without error

```matlab
asserts.noError('1 + 1');
```
Capture an unexpected error

```matlab
[res, msg] = asserts.noError('cos');
```


## 🔗 See also

[asserts.throws](../assert_functions/asserts.throws.md), [asserts.checkerror](../assert_functions/asserts.checkerror.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
