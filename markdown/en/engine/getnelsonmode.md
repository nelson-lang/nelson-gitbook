# getnelsonmode

Returns current Nelson mode.

## 📝 Syntax

- m = getnelsonmode()

## 📤 Output argument

- m - a string.

## 📄 Description

<b>getnelsonmode()</b> returns current Nelson mode used.

There are <b>5</b> modes:

<b>BASIC_ENGINE</b>: Nelson used as engine without any graphics.

<b>ADVANCED_ENGINE</b>: Nelson used as engine with graphics/gui.

<b>BASIC_TERMINAL</b>: Nelson launched as terminal without graphics.

<b>ADVANCED_TERMINAL</b>: Nelson launched as terminal with graphics/gui.

<b>BASIC_SIO_CLIENT</b>: Nelson launched as socket IO client.

<b>ADVANCED_SIO_CLIENT</b>: Nelson launched as socket IO client with graphics/gui.

<b>GUI</b>: Nelson launched as a graphical application (default).

## 💡 Example

```matlab
getnelsonmode()
```

## 🔗 See also

[executable](../engine/executable.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
