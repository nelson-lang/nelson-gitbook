#import "nelson_help.typ": *

= Install Nelson Engine API for Python <python_engine:6_install_nelson_engine_for_python>

Install the Python package that provides nelson.engine.

== Syntax

- #raw("python -m pip install path/to/nelson/modules/python_engine/resources/python");
- #raw("python -m pip install --no-build-isolation path/to/nelson/modules/python_engine/resources/python");
- #raw("python -m pip install -e path/to/nelson/modules/python_engine/resources/python");

== Description

The Nelson Engine API for Python is distributed as a Python package named #strong[nelson];. It provides #strong[nelson.engine]; and the Nelson-compatible Python array classes.

 Install the package into the Python environment that will call Nelson. From a Nelson source or build tree, the package directory is #strong[modules\/python\_engine\/resources\/python];.

 The Python package contains the Python API only. The native Nelson engine library must still be available from a Nelson installation or build output. If automatic discovery fails, set #strong[NELSON\_ROOT]; to the Nelson root directory, or set #strong[NELSON\_ENGINE\_LIBRARY]; to the full path of the engine library.

 On Windows build trees, the engine library is commonly #strong[bin\/x64\/libnlsEngine.dll];. On Linux it is commonly #strong[libnlsEngine.so];, and on macOS it is commonly #strong[libnlsEngine.dylib];.

 Optional packages such as NumPy and pandas are not required to import the engine package, but they enable higher fidelity conversion for arrays and tables.

 If the Python environment has no network access during installation, first ensure that #strong[setuptools]; and #strong[wheel]; are already installed, then use #strong[--no-build-isolation]; so pip does not try to download build dependencies into a temporary build environment.


== Examples

Install from a Windows Nelson build tree.

``````matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install .\modules\python_engine\resources\python
``````

Install in editable mode for development.

``````matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install -e .\modules\python_engine\resources\python
``````

Install without build isolation in an offline environment.

``````matlab
python -m pip install setuptools wheel
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install --no-build-isolation .\modules\python_engine\resources\python
``````

Use the installed package from another folder.

``````matlab
$env:NELSON_ROOT = "D:\Developpements\Github\nelson-lang\nelson"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
``````

Point directly to the engine library.

``````matlab
$env:NELSON_ENGINE_LIBRARY = "D:\Developpements\Github\nelson-lang\nelson\bin\x64\libnlsEngine.dll"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
``````

Install and use the package on Linux or macOS.

``````matlab
python -m pip install /path/to/nelson/modules/python_engine/resources/python
export NELSON_ROOT=/path/to/nelson
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
``````

Install optional conversion dependencies.

``````matlab
python -m pip install numpy pandas
``````


== See also

#nlink(<python_engine:5_call_nelson_from_python>)[Call Nelson from Python];, #nlink(<python_engine:pyenv>)[pyenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Nelson Engine API for Python installation help added.],
)

// Author: Allan CORNET
