# py

Python namespace proxy.

## 📝 Syntax

- p = py()
- p.module.function(...)

## 📤 Output argument

- p - Python namespace proxy object.
- pyValue - Python object returned by the called function.

## 📄 Description

py returns a proxy object used to access Python builtins and modules from Nelson.

Use attribute access on the returned object to import modules or call Python functions.

## Used function(s)

    pyenv

## 💡 Example

Call a Python built-in through the namespace proxy.

```matlab
p = py();
pyValue = p.int(42)
```

## 🔗 See also

[pyenv](../python_engine/pyenv.md), [pyrun](../python_engine/pyrun.md), [pyrunfile](../python_engine/pyrunfile.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
