# warning

Display a warning message.

## 📝 Syntax

- warning()
- warning(msg)
- warning(id, msg)
- warning(state)
- warning(state, id)
- st = warning()
- warning(st)

## 📥 Input argument

- id - a string: identifier for the warning.
- msg - a string: message to warn.
- state - a string: 'on', 'off', 'aserror', 'all' or 'query'.
- st - a struct: set warning settings.

## 📤 Output argument

- st - a struct, warning settings.

## 📄 Description

<b>warning</b> displays a warning message.

<b>warning('')</b> resets lastwarn state.

## 💡 Examples

```matlab
warning('your warning message.')
```

```matlab
warning('on', 'myModule:identifier');
warning('myModule:identifier', 'my message 1 on');
warning('off', 'myModule:identifier');
warning('myModule:identifier', 'my message 2 off');
warning('aserror', 'myModule:identifier');
warning('myModule:identifier', 'my message 3 as error');


```

## 🔗 See also

[lasterror](../error_manager/lasterror.md), [error](../error_manager/error.md), [lastwarn](../error_manager/lastwarn.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
