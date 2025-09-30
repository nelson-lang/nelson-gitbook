# How to install python package

## Description

<p>Nelson allows users to seamlessly integrate Python packages into their workflows.</p>
<p>Installing Python packages within Nelson expands its functionality and enables users to leverage a wide array of libraries for data analysis, machine learning, scientific computing, and more.</p>
<p>This help file provides a comprehensive guide on installing Python packages from within Nelson.</p>
<p></p>
<p>Tips and Considerations:</p>
<p></p>
<p>- Package Availability: Ensure that the Python package you intend to install is available on the Python Package Index (PyPI) or another compatible repository.</p>
<p>- Dependencies: Some Python packages may have dependencies on other packages. Make sure to install any required dependencies beforehand.</p>
<p>- Version Compatibility: Check the compatibility of the package with your current Python environment and Nelson version to avoid compatibility issues.</p>
<p>- Virtual Environments: Consider using virtual environments within Nelson to isolate package installations and manage dependencies for different projects.</p>
<p>- Permission Rights: When installing packages that require write access to the Python directory, ensure that you have the necessary permissions. On some systems, administrative privileges may be required to install packages globally. If you encounter permission errors, consider using a virtual environment or contacting your system administrator for assistance.</p>

## Examples

Get info from the pyenv environment:

```matlab
pe = pyenv
```

Construct the command to install the package:

```matlab
package_to_install = "scipy";
command_to_install = '"' + pe.Executable +  '"' + " -m pip install " + package_to_install;
```

Construct the command to install the package:

```matlab
[status, msg] = system(command_to_install);
```

## See also

[system](../os_functions/system.md), [pyenv](../python_engine/pyenv.md).
