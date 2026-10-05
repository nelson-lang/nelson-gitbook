# pyfunction

Wrap a Nelson function handle as a Python callable.

## 📝 Syntax

- c = pyfunction(fun\_handle)

## 📥 Input argument

- fun\_handle - a function handle: anonymous (for example <b>@(x) x .^ 2</b>) or named (for example <b>@sin</b>).

## 📤 Output argument

- c - a Python callable object (<b>py.builtin\_function\_or\_method</b>) that forwards its calls to the Nelson function handle.

## 📄 Description


<b>c = pyfunction(fun\_handle)</b> wraps a Nelson function handle into a Python callable object. When Python code calls <b>c</b>, the wrapped Nelson function handle runs synchronously in the same Nelson session and its result is returned to Python. 

This is the reverse direction of <b>pyrun</b>: instead of Nelson calling Python, Python calls Nelson. Pass the callable to Python with the name-value arguments of <b>pyrun</b> or <b>pyrunfile</b>, then call it from the Python code. It can be given to any Python API that expects a callable, for example a scikit-learn custom scorer, kernel, or transformer. 

When Python calls the wrapped callable, the positional arguments are converted to Nelson values (Python scalars and NumPy arrays follow the same rules as the other <b>python\_engine</b> conversions), the Nelson function handle is evaluated, and its single output is converted back to a Python object. Handles that return no value produce Python <b>None</b>. 

A Nelson error raised inside the callback becomes a Python exception whose message contains the Nelson message, and it is then surfaced cleanly in Nelson. 

<b>Limitations.</b> The callback is in-process and single-threaded: the Nelson function handle always runs on the Nelson interpreter thread. It is designed for single-threaded use only. With scikit-learn and joblib, use <b>n\_jobs=1</b>; backends that spawn worker processes or threads (<b>n\_jobs</b> greater than 1) cannot call back into the parent Nelson session, and a call arriving from an unexpected thread fails with a clear error instead of corrupting the session. Calling <b>pyrun</b> or <b>pyrunfile</b> again from within a callback is not supported and raises an error rather than deadlocking. Only a single output is supported.

## 💡 Examples

Call an anonymous handle from Python.

```matlab
sq = @(x) x .^ 2;
f = pyfunction(sq);
y = pyrun("r = g(4.0)", "r", "g", f)
```
Receive a NumPy array in the callback.

```matlab
add1 = @(v) double(v) + 1;
f = pyfunction(add1);
o = pyrun("import numpy as np; o = g(np.array([1.0, 2.0, 3.0]))", "o", "g", f)
```
Use a named function handle.

```matlab
f = pyfunction(@sin);
z = pyrun("r = g(0.0)", "r", "g", f)
```


## 🔗 See also

[pyrun](../python_engine/pyrun.md), [pyrunfile](../python_engine/pyrunfile.md), [Call Nelson from Python](../python_engine/5_call_nelson_from_python.md), [Python types supported](../python_engine/3_python_types.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
