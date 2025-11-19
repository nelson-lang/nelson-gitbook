# name=value

Name=value syntax for name-value arguments.

## 📝 Syntax

- plot(x, y, LineWidth=2)
- plot(x, y, "LineWidth", 2)

## 📄 Description

Starting with Nelson 1.15.0, functions can accept name-value arguments by using the<b>name=value</b> syntax.

The new form is equivalent to the traditional comma-separated syntax and improves readability when several name-value pairs appear in a single call.

Use one syntax per call whenever possible. If you mix both forms, every<b>name=value</b> argument must come after the comma-separated pairs, for example: plot(x, y, "Color", "red", LineWidth=2).

Reversing that order, such as plot(x, y, Color="red", "LineWidth", 2), is invalid.

Names used with the<b>name=value</b> syntax must be valid Nelson identifiers. For names that contain characters such as hyphens, continue to pass them as string/value pairs; for example: "allow-empty", true.

## 💡 Examples

Use the name=value syntax for readability.

```matlab

x = 0:0.1:2*pi;
y = sin(x);
plot(x, y, LineWidth=2, Color="red");
title("Sine wave with custom style");

```

Mix syntaxes only by placing name=value arguments last.

```matlab

x = linspace(0, 2*pi, 100);
y = cos(x);
plot(x, y, "LineStyle", "--", LineWidth=1.5);

```

## 🔗 See also

[function](../interpreter/function.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
