# qml_evaluatefile

Evaluates a js file.

## 📝 Syntax

- r = qml_evaluatefile(filename)

## 📥 Input argument

- filename - a string: a js filename.

## 📤 Output argument

- r - a double, logical, int or string.

## 📄 Description

Evaluates a js file.

If returned value cannot be converted to a basic type, it will converted to string.

## 💡 Example

```matlab
test_file = [tempdir() , '/example_qml_evaluatefile.js'];
f = fopen(test_file, 'wt');
fwrite(f, 'a = 2 + 4');
fclose(f);
qml_evaluatefile(test_file)
```

## 🔗 See also

[qml_evaluatestring](../qml_engine/qml_evaluatestring.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
