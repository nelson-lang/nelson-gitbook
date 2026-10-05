# asserts.warningFree

Check that a command completes without warning.

## 📝 Syntax

- asserts.warningFree(command)
- [res, msg] = asserts.warningFree(command)

## 📥 Input argument

- command - Command string evaluated in the current context.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when the command emits no warning and raises no error. 

Unexpected warnings are returned in msg when outputs are requested.

## 💡 Examples

Warning-free command

```matlab
asserts.warningFree('1 + 1');
```
Capture an unexpected warning

```matlab
[res, msg] = asserts.warningFree('warning(''Nelson:asserts:example'', ''expected warning'');');
```


## 🔗 See also

[asserts.warning](../assert_functions/asserts.warning.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
