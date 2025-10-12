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

<p>
            pyrunfile(filenam) function executes Python file.</p>

<p>In contrast to the pyrun function, variables generated in the Python workspace through the pyrunfile function do not persist. This means that subsequent calls to pyrunfile won't be able to access these variables.</p>

<p>The code outvars = pyrunfile(file, outputs, pyName1, pyValue2, ..., pyNameN, pyValueN) executes the code with one or more name-value pair arguments.</p>

<p>Known limitation:</p>

<p>The pyrun and pyrunfile functions lack support for classes containing local variables initialized by other local variables via methods. In such cases, it's advisable to create a module and access it instead.</p>

## Examples

pyrunfile_example_1.py

```matlab
content = "hello Nelson"
print(content)
```

pyrunfile from Nelson

```matlab
pyrunfile('pyrunfile_example_1.py')
```

pyrunfile_example_2.py

```matlab
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

```matlab
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

[pyrun](../python_engine/pyrun.md), [pyenv](../python_engine/pyenv.md), [Python types supported](../python_engine/3_python_types.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.4.0   | initial version |

## Author

Allan CORNET
