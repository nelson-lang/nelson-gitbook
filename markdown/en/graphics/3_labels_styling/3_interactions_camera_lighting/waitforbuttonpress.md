# waitforbuttonpress

Wait for click or key press.

## 📝 Syntax

- w = waitforbuttonpress()

## 📤 Output argument

- w - a scalar double value: 0 for mouse button pressed, 1 for key pressed.

## 📄 Description

<b>w = waitforbuttonpress()</b> pauses the execution of code until the user interacts with the current figure by either clicking a mouse button or pressing a key.

## 💡 Example

```matlab
cf = gcf();
w = waitforbuttonpress;
axes;
```

## 🔗 See also

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.7.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
