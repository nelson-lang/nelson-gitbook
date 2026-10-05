# nelson.lang.correction.ConvertToFunctionNotationCorrection

Correct error by converting to function notation.

## 📝 Syntax

- correction = nelson.lang.correction.ConvertToFunctionNotationCorrection(method)

## 📥 Input argument

- method - method name that should be called using function notation.

## 📤 Output argument

- correction - a nelson.lang.correction.ConvertToFunctionNotationCorrection object.

## 📄 Description


Use <b>nelson.lang.correction.ConvertToFunctionNotationCorrection</b> objects in classes whose methods should not be called using dot notation. 

<b>correction = nelson.lang.correction.ConvertToFunctionNotationCorrection(method)</b> creates a correction that suggests converting dot notation to function notation syntax for calling <b>method</b>. 

The read-only <b>Method</b> property contains the method name.

## 💡 Example



```matlab
ME = MException('nelson:useFunctionForm', 'Use function syntax to call this method.');
correction = nelson.lang.correction.ConvertToFunctionNotationCorrection('isvalid');
ME = addCorrection(ME, correction)
ME.Correction.Method
```


## 🔗 See also

[addCorrection](../error_manager/addCorrection.md), [nelson.lang.correction.AppendArgumentsCorrection](../error_manager/nelson.lang.correction.AppendArgumentsCorrection.md), [nelson.lang.correction.ReplaceIdentifierCorrection](../error_manager/nelson.lang.correction.ReplaceIdentifierCorrection.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
