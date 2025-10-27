# evalc

Evaluate Nelson code with console capture.

## 📝 Syntax

- t = evalc(str)
- t = evalc(str)
- [t, r1, ... rn] = evalc(str)

## 📥 Input argument

- str - a string: Nelson instruction to execute

## 📤 Output argument

- T - output text captured in t variable
- [r1, ... rn] - results: output variables

## 📄 Description

<b>evalc</b> executes Nelson instructions given in a string.

console display is redirected into a variable.

diary, more, and input are disabled when <b>evalc</b> is used.

## 💡 Examples

```matlab
evalc('B=4')
```

```matlab

      >t = evalc('dir')
```

## 🔗 See also

[eval](../core/eval.md), [evalin](../core/evalin.md), [execstr](../core/execstr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
