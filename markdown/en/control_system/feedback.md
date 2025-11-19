# feedback

Feedback connection of multiple models.

## 📝 Syntax

- sys = feedback(sys1, sys2)
- sys = feedback(sys1, sys2, sign)

## 📥 Input argument

- sys1, sys2 - LTI models: Systems to connect in a feedback loop.
- sign - Type of feedback: -1 (default) or +1.

## 📤 Output argument

- sys - Closed-loop system.

## 📄 Description

<b>sys = feedback(sys1, sys2)</b> generates a model object,<b>sys</b>, representing the negative feedback interconnection of the model objects<b>sys1</b> and <b>sys2</b>.

## 💡 Example

```matlab
G = tf([2 5 1], [1 2 3]);
C = tf([5, 10], [1, 10]);
sys = feedback(G, C, +1)

```

## 🔗 See also

[cloop](../control_system/cloop.md), [append](../control_system/append.md), [ssselect](../control_system/ssselect.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
