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

<b>warning('
')</b> resets lastwarn state.

When called as <b>warning(id, msg, ...)</b> or <b>warning(state, id)</b>, the identifier is written <b>component:mnemonic</b>, with one or more component fields followed by a mnemonic, each field starting with a letter and containing only letters, digits, or underscores, separated by colons (example: 'Nelson:io:fileNotFound'). Warnings raised by Nelson use <b>Nelson</b> as the first component; in your own code use a component of your choosing (for example your module name).

A few rules keep identifiers useful: the component should route to the area that raises the warning and the mnemonic should name the specific case in camelCase; a short two-field identifier is enough for cases that can happen anywhere; give one identifier a single message text (an identifier reused with several different messages cannot be translated); and reuse an existing identifier for the same case rather than a near-duplicate. The identifier is also what <b>warning('off', id)</b> and <b>warning('on', id)</b>enable or disable, so a stable identifier lets users control the warning.

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

<!--
## 👤 Author

Allan CORNET
-->
