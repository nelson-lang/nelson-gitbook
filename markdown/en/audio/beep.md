# beep

Produces a beep sound.

## 📝 Syntax

- beep
- beep(str)
- str = beep

## 📥 Input argument

- str - a string: 'on' or 'off'.

## 📤 Output argument

- str - a string: 'on' or 'off'.

## 📄 Description

<b>beep</b> produces a beep sound.

If the optional argument is 'off', the beep sound is disabled.

If the optional argument is 'on', the beep sound is enabled.

If no argument is provided, the current state is toggled.

If an output argument is provided, the current state ('on' or 'off') is returned.

## 💡 Example

```matlab
beep('off')
beep
beep('on')
beep
s = beep
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
