# clf

Clear figure.

## 📝 Syntax

- clf
- clf(f)
- F = clf(...)

## 📥 Input argument

- f - a scalar graphics object on an existing figure.

## 📤 Output argument

- F - a graphics object: used figure graphics object.

## 📄 Description

<b>clf</b> clears the current figure.

## 💡 Example

```matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
clf
```

## 🔗 See also

[gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md), [cla](../../../graphics/2_graphics_objects/1_object_management/cla.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
