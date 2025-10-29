# invoke

Invoke method on an handle object.

## 📝 Syntax

- R = invoke(h)
- R = invoke(h, 'methodname')
- R = invoke(h, 'methodname', arg1, arg2, ... , argN)

## 📥 Input argument

- h - an handle object.

## 📤 Output argument

- R - The data type of the return value depends on the invoked method.

## 📄 Description

<b>invoke(h)</b> returns a struct with a list of all callable methods.

<b>R = invoke(h, 'methodname')</b> calls the method specified by methodname, and returns an output value.

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
