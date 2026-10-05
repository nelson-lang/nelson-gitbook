# getReport

Get MException report.

## 📝 Syntax

- report = getReport(ME)
- report = getReport(ME, type)
- report = ME.getReport(type)

## 📥 Input argument

- ME - a scalar MException object.
- type - 'basic' or 'extended'.

## 📤 Output argument

- report - a string: formatted exception report.

## 📄 Description


<b>getReport</b> returns a formatted report for an MException object. 

The <b>basic</b> report contains the exception message. The <b>extended</b> report includes additional diagnostic information when available.

## 💡 Example



```matlab
ME = MException('nelson:badIndex', 'Unable to index into array.');
getReport(ME, 'basic')
```


## 🔗 See also

[MException](../error_manager/MException.md), [addCause](../error_manager/addCause.md), [throw](../error_manager/throw.md), [getLastReport](../error_manager/getLastReport.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
