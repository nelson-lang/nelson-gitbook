# append

Appends the inputs and outputs of the two models.

## 📝 Syntax

- sys = append(sys1, sys2, ..., sysN)

## 📥 Input argument

- sys1, sys2, ..., sysN - LTI models.

## 📤 Output argument

- sys - LTI model.

## 📄 Description

<b>sys = append(sys1, sys2, ..., sysN)</b> combines the inputs and outputs of models<b>sys1</b> through<b>sysN</b>, creating an augmented model represented by <b>sys</b>.

## 💡 Example

```matlab
sys1 = tf(1,[1 0]);
sys2 = tf([1 -1], [4 2]);
sys = append(sys1, 10, sys2)

```

## 🔗 See also

[feedback](../control_system/feedback.md), [series](../control_system/series.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
