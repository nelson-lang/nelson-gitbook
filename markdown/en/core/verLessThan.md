# verLessThan

Compare toolbox version to a version string.

## 📝 Syntax

- tf = verLessThan(toolboxName, versionString)

## 📥 Input argument

- toolboxName - a string scalar or character array: product name.
- versionString - a string of the form <b>'major[.minor[.revision]]'</b>.

## 📤 Output argument

- tf - a logical: <b>true</b> when the installed version is lower than <b>versionString</b>.

## 📄 Description


<b>tf = verLessThan(toolboxName, versionString)</b> returns <b>true</b> when the installed version of the named product is lower than <b>versionString</b>. 

For compatibility, querying <b>'matlab'</b> reports a recent version so that legacy version gates resolve to <b>false</b>.

## 💡 Example



```matlab
tf = verLessThan('nelson', '0.1')
```


## 🔗 See also

[ver](../core/ver.md), [isMATLABReleaseOlderThan](../core/isMATLABReleaseOlderThan.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
