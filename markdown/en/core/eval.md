# eval

Evaluate Nelson code in string.

## 📝 Syntax

- eval(str)
- eval(str, catch_str)
- [r1, ... rn] = eval(str)
- [r1, ... rn] = eval(str, catch_str)

## 📥 Input argument

- str - a string: Nelson instruction to execute
- catch_str - a string: Nelson instruction to execute if an error is detected.

## 📤 Output argument

- [r1, ... rn] - results: output variables

## 📄 Description

<b>eval</b> executes Nelson instructions given in a string.

Please use <b>try catch end</b> block instead than <b>eval</b>, if you need to capture an error message for higher performance.

## 💡 Examples

```matlab
eval('B=4')
```

This example will fail and returns an error message.

```matlab
C = eval('B=4')
```

```matlab
D = eval(4)
```

This example will not fail and return false.

```matlab
eval('error(''blabla'')', 'l = lasterror(); disp([''lasterror message: '', l.message])')
```

## 🔗 See also

[execstr](../core/execstr.md), [evalc](../core/evalc.md), [evalin](../core/evalin.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
