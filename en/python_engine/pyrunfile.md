# pyrunfile

Run Python file from Nelson.

## Syntax

- pyrunfile(filename)
- pyrunfile(filename input)
- outvars = pyrunfile(filename, outputs)
- outvars = pyrunfile(filename, outputs, pyName, pyValue, ...)

## Input argument

- filename - a string scalar, character vector: filename .py to run.
- "filename 'input'" - a string scalar, character vector: filename .py to run with input arguments.
- pyName, pyValue - Input arguments name and value
- outputs - string array: Python variable names.

## Output argument

- outvars - One or more Nelson workspace variable names returned as valid Python types.

## Description

  <p><b>pyrunfile(filenam)</b> function executes Python file.</p>
  <p>In contrast to the <b>pyrun</b> function, variables generated in the Python workspace through the <b>pyrunfile</b> function do not persist. This means that subsequent calls to <b>pyrunfile</b> won't be able to access these variables.</p>
  <p>The code <b>outvars = pyrunfile(file, outputs, pyName1, pyValue2, ..., pyNameN, pyValueN)</b> executes the code with one or more name-value pair arguments.</p>
  <p>Known limitation:</p>
  <p>The <b>pyrun</b> and <b>pyrunfile</b> functions lack support for classes containing local variables initialized by other local variables via methods. In such cases, it's advisable to create a module and access it instead.</p>

## Examples

pyrunfile_example_1.py

```Python
content = "hello Nelson"
print(content)
```

pyrunfile from Nelson

```matlab
pyrunfile('pyrunfile_example_1.py')
```

pyrunfile_example_2.py

```Python
import sys
print('greetings from:')
for arg in sys.argv[0:]:
    print(arg)
```

pyrunfile from Nelson with arguments

```matlab
pyrunfile('pyrunfile_example_2.py "Hello" "world"')
```

pyrunfile_example_3.py

```Python
def minus(a,c):
    b = a-c
    return b

z = minus(x, y)
```

pyrunfile from Nelson with values from Nelson

```matlab
pyrunfile('pyrunfile_example_3.py', 'x', 5, 'y', 3)
```

## See also

[pyrun](pyrun.md), [pyenv](pyenv.md), [Python types supported](python_types.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.4.0   | initial version |

## Author

Allan CORNET
