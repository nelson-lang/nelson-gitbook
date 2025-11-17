# consolebox

Displays or hides the Windows terminal associated with the Nelson session.

## 📝 Syntax

- consolebox(visibility)
- consolebox('toggle')
- status = consolebox('status')

## 📥 Input argument

- visibility - a logical: true to show the console box, false to hide it

## 📤 Output argument

- status - a logical: true if the console box is visible, false otherwise

## 📄 Description

Displays or hides the Windows terminal associated with the Nelson session.

Each Nelson session runs within its own consolebox. When the Nelson session ends, its corresponding consolebox is automatically terminated.

The consolebox is a black terminal window that cannot be closed manually — the close (“X”) button in the upper-right corner is disabled. Forcing it to close will also terminate the Nelson session.

Some low-level Nelson functions (and certain external libraries) output their messages directly to the consolebox.

Since these messages could clutter the main Nelson console, they are not displayed there.

Enabling the consolebox with consolebox on allows you to view these messages, which can be very useful for debugging.

## 💡 Example

```matlab
consolebox(true)
pause(10)
consolebox('toggle')
pause(10)
consolebox(false)
```

## 🔗 See also

[clc](../console/clc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
