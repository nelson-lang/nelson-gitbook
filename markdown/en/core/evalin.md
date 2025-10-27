# evalin

Evaluate Nelson code in string in an specified scope.

## 📝 Syntax

- evalin(scope, str)
- [r1, ... rn] = evalin(scope, str)

## 📥 Input argument

- scope - a string: 'base' or 'caller'.
- str - a string: Nelson instruction to execute

## 📤 Output argument

- [r1, ... rn] - results: output variables

## 📄 Description

<b>eval</b> executes Nelson instructions given in a string in 'base' or 'caller' scope.

## 💡 Example

```matlab
evalin('base', 'B=4')
```

## 🔗 See also

[eval](../core/eval.md), [acquirevar](../memory_manager/acquirevar.md), [execstr](../core/execstr.md), [evalc](../core/evalc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
