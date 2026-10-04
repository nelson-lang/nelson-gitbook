# getpid

Get nelson(s) Process IDentificator.

## 📝 Syntax

- p = getpid()
- v = getpid('available')

## 📥 Input argument

- 'available' - a string.

## 📤 Output argument

- p - a double: current Process Identifier.
- v - a vector of double: list of nelson Processes Identification (with same arch) currently running for current user.

## 📄 Description

<b>p = getpid()</b> returns current nelson process identifier currently running on computer.

<b>v = getpid('available')</b> returns list of nelson processes identifiers (with same arch) running for current user.

win64 and win32 are two different architecture but they can run in same time.

## 💡 Example

```matlab
p = getpid()
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
```

## 🔗 See also

[unix](../os_functions/unix.md), [ipc](../ipc/ipc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
