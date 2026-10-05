#import "nelson_help.typ": *

= pyrunfile <python_engine:pyrunfile>

Run Python file from Nelson.

== Syntax

- #raw("pyrunfile(filename)");
- #raw("pyrunfile(filename input)");
- #raw("outvars = pyrunfile(filename, outputs)");
- #raw("outvars = pyrunfile(filename, outputs, pyName, pyValue, ...)");

== Input argument

/ filename: a string scalar, character vector: filename .py to run.
/ "filename 'input' ": a string scalar, character vector: filename .py to run with input arguments.
/ pyName, pyValue: Input arguments name and value
/ outputs: string array: Python variable names.

== Output argument

/ outvars: One or more Nelson workspace variable names returned as valid Python types.

== Description

#strong[pyrunfile(filenam)]; function executes Python file.

 In contrast to the #strong[pyrun]; function, variables generated in the Python workspace through the #strong[pyrunfile]; function do not persist. This means that subsequent calls to #strong[pyrunfile]; won't be able to access these variables.

 The code #strong[outvars \= pyrunfile(file, outputs, pyName1, pyValue2, ..., pyNameN, pyValueN)]; executes the code with one or more name-value pair arguments.

 Known limitation:

 The #strong[pyrun]; and #strong[pyrunfile]; functions lack support for classes containing local variables initialized by other local variables via methods. In such cases, it's advisable to create a module and access it instead.


== Examples

pyrunfile\_example\_1.py

``````matlab
content = "hello Nelson"
print(content)
``````

pyrunfile from Nelson

``````matlab
pyrunfile('pyrunfile_example_1.py')
``````

pyrunfile\_example\_2.py

``````matlab
import sys
print('greetings from:')
for arg in sys.argv[0:]:
    print(arg)

``````

pyrunfile from Nelson with arguments

``````matlab
pyrunfile('pyrunfile_example_2.py "Hello" "world"')
``````

pyrunfile\_example\_3.py

``````matlab
def minus(a,c):
    b = a-c
    return b

z = minus(x, y)

``````

pyrunfile from Nelson with values from Nelson

``````matlab
pyrunfile('pyrunfile_example_3.py', 'x', 5, 'y', 3)
``````


== See also

#nlink(<python_engine:pyrun>)[pyrun];, #nlink(<python_engine:pyenv>)[pyenv];, #nlink(<python_engine:3_python_types>)[Python types supported];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.4.0], [initial version],
)

// Author: Allan CORNET
