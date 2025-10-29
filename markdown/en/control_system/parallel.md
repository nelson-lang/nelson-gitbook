# parallel

Parallel connection of two models.

## 📝 Syntax

- sys = parallel(sys1, sys2)
- sys = parallel(sys1, sys2)

## 📥 Input argument

- sys1, sys2 - LTI models.

## 📤 Output argument

- sys - LTI model.

## 📄 Description

<b>parallel</b> function links two model objects in parallel.

It is versatile and can accept various types of models.

However, for successful connection, both systems must share the same nature, being either continuous or discrete, and must have identical sample times.

Static gains are treated as neutral and can be defined using regular matrices.

## 💡 Example

```matlab
sys1 = tf([1 4], [8 2 1]);
sys2 = tf(1, [8 2 1]);
sys = parallel(sys2, sys2)
```

## 🔗 See also

[series](../control_system/series.md), [append](../control_system/append.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
