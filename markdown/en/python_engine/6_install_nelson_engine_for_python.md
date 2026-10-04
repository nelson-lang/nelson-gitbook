# Install Nelson Engine API for Python

Install the Python package that provides nelson.engine.

## 📝 Syntax

- python -m pip install path/to/nelson/modules/python_engine/resources/python
- python -m pip install --no-build-isolation path/to/nelson/modules/python_engine/resources/python
- python -m pip install -e path/to/nelson/modules/python_engine/resources/python

## 📄 Description

The Nelson Engine API for Python is distributed as a Python package named <b>nelson</b>. It provides <b>nelson.engine</b> and the Nelson-compatible Python array classes.

Install the package into the Python environment that will call Nelson. From a Nelson source or build tree, the package directory is <b>modules/python_engine/resources/python</b>.

The Python package contains the Python API only. The native Nelson engine library must still be available from a Nelson installation or build output. If automatic discovery fails, set <b>NELSON_ROOT</b> to the Nelson root directory, or set <b>NELSON_ENGINE_LIBRARY</b> to the full path of the engine library.

On Windows build trees, the engine library is commonly <b>bin/x64/libnlsEngine.dll</b>. On Linux it is commonly <b>libnlsEngine.so</b>, and on macOS it is commonly <b>libnlsEngine.dylib</b>.

Optional packages such as NumPy and pandas are not required to import the engine package, but they enable higher fidelity conversion for arrays and tables.

If the Python environment has no network access during installation, first ensure that <b>setuptools</b> and <b>wheel</b> are already installed, then use <b>--no-build-isolation</b> so pip does not try to download build dependencies into a temporary build environment.

## 💡 Examples

Install from a Windows Nelson build tree.

```matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install .\modules\python_engine\resources\python
```

Install in editable mode for development.

```matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install -e .\modules\python_engine\resources\python
```

Install without build isolation in an offline environment.

```matlab
python -m pip install setuptools wheel
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install --no-build-isolation .\modules\python_engine\resources\python
```

Use the installed package from another folder.

```matlab
$env:NELSON_ROOT = "D:\Developpements\Github\nelson-lang\nelson"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
```

Point directly to the engine library.

```matlab
$env:NELSON_ENGINE_LIBRARY = "D:\Developpements\Github\nelson-lang\nelson\bin\x64\libnlsEngine.dll"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
```

Install and use the package on Linux or macOS.

```matlab
python -m pip install /path/to/nelson/modules/python_engine/resources/python
export NELSON_ROOT=/path/to/nelson
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
```

Install optional conversion dependencies.

```matlab
python -m pip install numpy pandas
```

## 🔗 See also

[Call Nelson from Python](../python_engine/5_call_nelson_from_python.md), [pyenv](../python_engine/pyenv.md).

## 🕔 History

| Version | 📄 Description                                        |
| ------- | ----------------------------------------------------- |
| 2.0.0   | Nelson Engine API for Python installation help added. |

<!--
## 👤 Author

Allan CORNET
-->
