# addCorrection

Add correction to MException.

## 📝 Syntax

- ME = addCorrection(ME, correction)
- ME = ME.addCorrection(correction)

## 📥 Input argument

- ME - a scalar MException object.
- correction - a nelson.lang.correction.AppendArgumentsCorrection, nelson.lang.correction.ConvertToFunctionNotationCorrection, or nelson.lang.correction.ReplaceIdentifierCorrection object.

## 📤 Output argument

- ME - a new MException object containing the correction.

## 📄 Description


<b>addCorrection</b> returns a new MException object with the <b>Correction</b> property set to <b>correction</b>. 

Nelson correction objects are <b>nelson.lang.correction.AppendArgumentsCorrection</b>, <b>nelson.lang.correction.ConvertToFunctionNotationCorrection</b>, and <b>nelson.lang.correction.ReplaceIdentifierCorrection</b>.

## 💡 Example



```matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
```


## 🔗 See also

[MException](../error_manager/MException.md), [addCause](../error_manager/addCause.md), [getReport](../error_manager/getReport.md), [nelson.lang.correction.AppendArgumentsCorrection](../error_manager/nelson.lang.correction.AppendArgumentsCorrection.md), [nelson.lang.correction.ConvertToFunctionNotationCorrection](../error_manager/nelson.lang.correction.ConvertToFunctionNotationCorrection.md), [nelson.lang.correction.ReplaceIdentifierCorrection](../error_manager/nelson.lang.correction.ReplaceIdentifierCorrection.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
