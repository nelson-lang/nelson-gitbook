#import "nelson_help.typ": *

= Call Nelson from Python <python_engine:5_call_nelson_from_python>

Use the Nelson Engine API for Python.

== Syntax

- #raw("import nelson.engine");
- #raw("eng = nelson.engine.start_nelson()");
- #raw("eng.eval(command, nargout=0)");
- #raw("eng.feval(function_name, *args, nargout=1)");
- #raw("eng.workspace[name] = value");
- #raw("value = eng.workspace[name]");
- #raw("eng.quit()");

== Description

The #strong[nelson.engine]; Python package starts or connects to a Nelson process from Python and exposes Nelson functions as Python methods.

 The package can be used from a Nelson installation or from a build tree when the Nelson engine library is available. If automatic discovery fails, set #strong[NELSON\_ROOT]; or #strong[NELSON\_ENGINE\_LIBRARY]; before importing the package.

 To install the Python package from a Nelson source or build tree, run #strong[python -m pip install path\/to\/nelson\/modules\/python\_engine\/resources\/python];. See the installation help page for complete commands and environment variable setup.

 #strong[start\_nelson]; starts an owned Nelson session. Calling #strong[quit]; or #strong[close]; closes that session. #strong[connect\_nelson]; attaches to an existing session and detaches without closing the target process.

 Set #strong[background\=True]; to run startup or connection asynchronously. The return value is a #strong[FutureResult]; object with #strong[result];, #strong[done];, #strong[cancel];, and #strong[cancelled]; methods.

 Use #strong[nargout]; to control returned values. With #strong[nargout\=0];, calls return #strong[None];. With #strong[nargout\=1];, calls return one value. With #strong[nargout\>1];, calls return a tuple.

 Function calls are synchronous by default. Pass #strong[background\=True]; to call a Nelson function asynchronously. The call immediately returns a #strong[FutureResult];; use #strong[result(timeout\=None)];, #strong[done];, #strong[cancel];, and #strong[cancelled]; to inspect or control it.

 #strong[FutureResult.result(timeout)]; raises #strong[nelson.engine.TimeoutError]; if the result is not ready before the timeout, #strong[CancelledError]; if the call was cancelled, and propagates Nelson execution errors from the asynchronous call.

 Supported data exchange includes scalar values, strings, logical values, numeric arrays, Nelson array classes, and NumPy arrays when NumPy is installed. Unsupported types raise explicit errors instead of being silently converted.

 Python to Nelson conversions: #strong[bool]; becomes logical, #strong[int]; and #strong[float]; become scalar double, #strong[complex]; becomes complex double, #strong[str]; becomes char, lists and tuples become double arrays unless they contain complex values, valid-key Python #strong[dict]; values become scalar structs, #strong[nelson.cell]; becomes a cell array, #strong[nelson.table]; and pandas DataFrame values become Nelson tables, and #strong[nelson.sparse]; is created with Nelson #strong[sparse];. pandas DataFrame indexes that are not the default RangeIndex, including DatetimeIndex values, are preserved as Nelson table row names rather than converted to timetables. NumPy arrays preserve common bool, integer, float, and complex dtypes when NumPy is installed.

 Nelson to Python conversions: char arrays become #strong[nelson.char];, dense numeric and logical arrays become Nelson Python array objects, complex arrays preserve their real and imaginary parts, and sparse matrices become #strong[nelson.sparse];. Scalar structs become #strong[nelson.struct];, cell arrays become #strong[nelson.cell];, and tables become pandas DataFrame values when pandas is installed or #strong[nelson.table]; otherwise. Sparse reads use a compatibility path based on #strong[full]; metadata when direct sparse IPC serialization is unavailable. Non-scalar struct arrays, graphics, and other safe object handles return as #strong[nelson.engine.NelsonObject]; values that can be passed back to the same engine call, for example to select or close a figure. Object handles also provide convenience #strong[get]; and #strong[set]; methods for Nelson properties when the underlying Nelson object supports them.

 Not fully supported yet: converting non-scalar struct arrays into native Python mapping objects, deep table nesting, and arbitrary direct object method dispatch from Python. Nelson provides a timetable type, but its conversion to and from Python objects is not yet exposed. Python dictionaries with keys that are not valid struct field names are transferred through Nelson dictionary construction when assigned to the workspace. Unsupported object conversions raise explicit compatibility errors or return Nelson object handles when a safe conversion is not available.

 Table workflows can often be adapted by converting tabular data to supported arrays before crossing the engine boundary. For example, sort or filter values in Python lists, then pass the selected numeric data back as #strong[nelson.double]; arrays for Nelson calculations or plotting.

 Nelson array classes include #strong[nelson.double];, #strong[nelson.single];, signed and unsigned integer arrays, #strong[nelson.logical];, and #strong[nelson.char];. Arrays use zero-based Python indexing and preserve Nelson column-major storage for engine transfer.

 Dictionaries can be represented with #strong[nelson.dictionary];. Table values interoperate with pandas DataFrame objects when pandas is installed; otherwise they are represented as Nelson object handles or raise compatibility errors where conversion is not available.

 The #strong[nelson.engine]; package starts or connects to a separate Nelson process. For the in-process case, when Python is run from Nelson with #strong[pyrun]; or #strong[pyrunfile];, a Nelson function handle can be wrapped into a Python callable with #strong[pyfunction]; and called back synchronously from the Python code (for example as a scikit-learn scorer, kernel, or transformer). That callback is single-threaded and requires #strong[n\_jobs\=1];.


== Examples

Start Nelson, call a function, and close the session.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
print(eng.sqrt(4.0))
eng.quit()
``````

Call a Nelson function asynchronously.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
future = eng.sqrt(4.0, background=True)
if not future.done():
    ret = future.result(timeout=30)
print(ret)
eng.quit()
``````

Evaluate commands and exchange workspace variables.

``````matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
eng.workspace["x"] = nelson.double([[1, 2, 3], [4, 5, 6]])
eng.eval("y = x * 2;", nargout=0)
y = eng.workspace["y"]
eng.quit()
``````

Call a user script that computes the area of a triangle.

``````matlab
# File triarea_script.m in the current folder:
# b = 5;
# h = 3;
# a = 0.5 * (b .* h)

import nelson.engine

eng = nelson.engine.start_nelson()
eng.triarea_script(nargout=0)
area = eng.workspace["a"]
eng.quit()
``````

Call a user function from the current folder.

``````matlab
# File triarea_fun.m in the current folder:
# function a = triarea_fun(b, h)
#   a = 0.5 * (b .* h);
# end

import nelson.engine

eng = nelson.engine.start_nelson()
ret = eng.triarea_fun(1.0, 5.0)
print(ret)
eng.quit()
``````

Call functions by changing folder or adding folders to the Nelson path.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.cd(r"C:\work\myFolder", nargout=0)
eng.myFnc(nargout=0)

eng.addpath(r"C:\work\myfiles", nargout=0)
paths = eng.genpath(r"C:\work\myproject")
eng.addpath(paths, nargout=0)
eng.quit()
``````

Call a user function after adding its folder to Nelson path.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.addpath(r"C:\work\nelson_functions", nargout=0)
result = eng.myfunction(10.0, nargout=1)
eng.quit()
``````

Run a script. Scripts normally use nargout\=0.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.cd(r"C:\work\scripts", nargout=0)
eng.myscript(nargout=0)
eng.quit()
``````

Start Nelson asynchronously.

``````matlab
import nelson.engine

future = nelson.engine.start_nelson(background=True)
eng = future.result(timeout=30)
eng.eval("disp('ready')", nargout=0)
eng.quit()
``````

Use complex, logical, sparse, and NumPy values.

``````matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
eng.workspace["z"] = nelson.double([[1 + 2j, 3 - 4j]], is_complex=True)
eng.workspace["flags"] = nelson.logical([[True, False]])
eng.workspace["s"] = nelson.sparse([0, 1], [1, 0], [5.0, 7.0], (2, 2))

try:
    import numpy as np
    eng.workspace["np_values"] = np.array([[1, 2]], dtype=np.int16)
except ImportError:
    pass

eng.quit()
``````

Use a Medium-style direct engine workflow instead of os.system.

``````matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
params = nelson.dictionary({"param1": 10, "param2": 12})
values = nelson.double([1, 2, 3])

# Native dictionary transfer is not yet available in the v1 bridge.
# Pass supported scalar/array values directly, or convert dictionaries in Nelson code.
eng.myFunc(values, nargout=0)
eng.quit()
``````

Sort data in Python and plot it with Nelson.

``````matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()

pressure = nelson.double(vector=[82.0, 76.0, 91.0, 79.0])
smoker = nelson.logical(vector=[True, False, True, False])

pressure_values = pressure[0]
smoker_values = smoker[0]
sp = [p for p, s in zip(pressure_values, smoker_values) if s is True]
nsp = [p for p, s in zip(pressure_values, smoker_values) if s is False]

sp = nelson.double(sp)
nsp = nelson.double(nsp)
smoker_average = eng.mean(sp)
nonsmoker_average = eng.mean(nsp)

sdx = eng.linspace(1.0, float(len(sp[0])), len(sp[0]))
nsdx = eng.linspace(1.0, float(len(nsp[0])), len(nsp[0]))

eng.figure(nargout=0)
eng.hold("on", nargout=0)
eng.box("on", nargout=0)
eng.scatter(sdx, sp, 10.0, "blue", nargout=0)
eng.scatter(nsdx, nsp, 10.0, "red", nargout=0)
eng.xlabel("Patient (Anonymized)", nargout=0)
eng.ylabel("Diastolic Blood Pressure", nargout=0)
eng.title("Blood Pressure Readings", nargout=0)
eng.legend("Smokers", "Nonsmokers", nargout=0)
eng.quit()
``````

Keep a Nelson graphics handle in Python and pass it back.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
h = eng.figure()
eng.figure(h, nargout=0)
visible = h.get("Visible")
h.set("Visible", visible)
eng.feval("close", h, nargout=0)
h.release()
eng.quit()
``````

Use Nelson arrays and dictionaries from Python.

``````matlab
import nelson

a = nelson.double([[1, 2], [3, 4]])
flags = nelson.logical([[True, False]])
config = nelson.dictionary({"method": "fast", "iterations": 10})
``````


== See also

#nlink(<python_engine:pyrun>)[pyrun];, #nlink(<python_engine:pyfunction>)[pyfunction];, #nlink(<python_engine:pyenv>)[pyenv];, #nlink(<python_engine:6_install_nelson_engine_for_python>)[Install Nelson Engine API for Python];, #nlink(<ipc:ipc>)[ipc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Nelson Engine API for Python added.],
)

// Author: Allan CORNET
