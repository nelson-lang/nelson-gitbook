# MException.last

Return or reset last uncaught MException.

## 📝 Syntax

- exception = MException.last
- MException.last('reset')

## 📤 Output argument

- exception - a MException object.

## 📄 Description

<b>MException.last</b> returns the last uncaught exception recorded by the evaluator. Exceptions handled by a catch block do not update it.

<b>MException.last('reset')</b> clears the recorded exception.

## 💡 Example

```matlab
MException.last('reset');
exception = MException.last
```

## 🔗 See also

[MException](../error_manager/MException.md), [lasterror](../error_manager/lasterror.md), [getLastReport](../error_manager/getLastReport.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
