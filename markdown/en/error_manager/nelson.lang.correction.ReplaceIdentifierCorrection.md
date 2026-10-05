# nelson.lang.correction.ReplaceIdentifierCorrection

Correct error by replacing identifier in function call.

## 📝 Syntax

- correction = nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)

## 📥 Input argument

- identifier - incorrect identifier in the function call.
- replacement - replacement identifier.

## 📤 Output argument

- correction - a nelson.lang.correction.ReplaceIdentifierCorrection object.

## 📄 Description


Use <b>nelson.lang.correction.ReplaceIdentifierCorrection</b> objects in functions that throw a MException object. 

<b>correction = nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)</b> creates a correction that suggests replacing <b>identifier</b> with <b>replacement</b> in the function call that threw the MException object. 

The read-only <b>Identifier</b> and <b>Replacement</b> properties contain the incorrect identifier and replacement identifier.

## 💡 Example



```matlab
ME = MException('nelson:unknownName', 'Unknown identifier.');
correction = nelson.lang.correction.ReplaceIdentifierCorrection('oldName', 'newName');
ME = addCorrection(ME, correction)
ME.Correction.Replacement
```


## 🔗 See also

[addCorrection](../error_manager/addCorrection.md), [nelson.lang.correction.AppendArgumentsCorrection](../error_manager/nelson.lang.correction.AppendArgumentsCorrection.md), [nelson.lang.correction.ConvertToFunctionNotationCorrection](../error_manager/nelson.lang.correction.ConvertToFunctionNotationCorrection.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
