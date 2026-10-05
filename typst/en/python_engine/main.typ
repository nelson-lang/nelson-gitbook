#import "nelson_help.typ": *

= Python engine

The Python Engine module lets Nelson call Python code and use Python libraries alongside Nelson functions.

 It provides functions to run Python code, manage interpreter environments, and exchange data between Nelson and Python.

== Functions

- #nlink(<python_engine:1_The_power_of_Python>)[The power of calling Python from Nelson]: 
- #nlink(<python_engine:2_How_to_install_python_package>)[How to install python package]: 
- #nlink(<python_engine:3_python_types>)[Python Nelson types]: Managing Data between Python and Nelson.
- #nlink(<python_engine:4_python_overload>)[Python operators]: The representation of Python operators in Nelson.
- #nlink(<python_engine:5_call_nelson_from_python>)[Call Nelson from Python]: Use the Nelson Engine API for Python.
- #nlink(<python_engine:6_install_nelson_engine_for_python>)[Install Nelson Engine API for Python]: Install the Python package that provides nelson.engine.
- #nlink(<python_engine:py>)[py]: Python namespace proxy.
- #nlink(<python_engine:pyargs>)[pyargs]: Change default environment of Python interpreter.
- #nlink(<python_engine:pyenv>)[pyenv]: Change default environment of Python interpreter.
- #nlink(<python_engine:pyfunction>)[pyfunction]: Wrap a Nelson function handle as a Python callable.
- #nlink(<python_engine:pyrun>)[pyrun]: Run Python statements from Nelson.
- #nlink(<python_engine:pyrunfile>)[pyrunfile]: Run Python file from Nelson.


#nested[
#pagebreak(weak: true)
#include "1_The_power_of_Python.typ"
#pagebreak(weak: true)
#include "2_How_to_install_python_package.typ"
#pagebreak(weak: true)
#include "3_python_types.typ"
#pagebreak(weak: true)
#include "4_python_overload.typ"
#pagebreak(weak: true)
#include "5_call_nelson_from_python.typ"
#pagebreak(weak: true)
#include "6_install_nelson_engine_for_python.typ"
#pagebreak(weak: true)
#include "py.typ"
#pagebreak(weak: true)
#include "pyargs.typ"
#pagebreak(weak: true)
#include "pyenv.typ"
#pagebreak(weak: true)
#include "pyfunction.typ"
#pagebreak(weak: true)
#include "pyrun.typ"
#pagebreak(weak: true)
#include "pyrunfile.typ"
]
