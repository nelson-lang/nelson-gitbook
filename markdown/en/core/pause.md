# pause

Pauses script execution.

## 📝 Syntax

- state = pause()
- pause(t)
- pause(newState)
- previousState = pause(newState)
- currentState = pause('query')

## 📥 Input argument

- t - t: double value. time (seconds) before to continue.
- newState - a string: 'on' (enable pause) or 'off' (disable pause setting)

## 📤 Output argument

- previousState, currentState - a string: 'on' or 'off'

## 📄 Description

<b>pause(t)</b> suspends execution for t seconds.

<b>pause</b> without input argument wait until return key is pressed.

## 💡 Example

an example

```matlab
state = pause
echo('press return to continue.')
pause
pause('off')
pause
pause('on')
pause(5)
```

## 🔗 See also

[sleep](../time/sleep.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
