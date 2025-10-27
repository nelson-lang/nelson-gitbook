# cla

Clear axes.

## 📝 Syntax

- cla
- cla(ax)
- ca = cla(...)

## 📥 Input argument

- ax - a scalar graphics object on an existing axes.

## 📤 Output argument

- ca - a graphics object: used axes graphics object.

## 📄 Description

<b>cla</b> clears the current axes.

## 💡 Example

```matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
cla
```

## 🔗 See also

[gca](../graphics/gca.md), [clf](../graphics/clf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
