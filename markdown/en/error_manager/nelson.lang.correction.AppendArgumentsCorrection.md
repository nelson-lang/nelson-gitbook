# nelson.lang.correction.AppendArgumentsCorrection

Correct error by appending missing input arguments.

## 📝 Syntax

- correction = nelson.lang.correction.AppendArgumentsCorrection(arguments)

## 📥 Input argument

- arguments - suggested arguments, specified as a string, a character vector, or a cell array of character vectors.

## 📤 Output argument

- correction - a nelson.lang.correction.AppendArgumentsCorrection object.

## 📄 Description


Use <b>nelson.lang.correction.AppendArgumentsCorrection</b> objects in functions that throw a MException object. 

<b>correction = nelson.lang.correction.AppendArgumentsCorrection(arguments)</b> creates a correction that suggests appending input <b>arguments</b> to the function call that threw the MException object. 

The read-only <b>Arguments</b> property contains the suggested arguments.

## 💡 Example



```matlab
ME = MException('nelson:notEnoughInputs', 'Not enough input arguments.');
correction = nelson.lang.correction.AppendArgumentsCorrection('"world"');
ME = addCorrection(ME, correction)
ME.Correction.Arguments
```


## 🔗 See also

[addCorrection](../error_manager/addCorrection.md), [nelson.lang.correction.ConvertToFunctionNotationCorrection](../error_manager/nelson.lang.correction.ConvertToFunctionNotationCorrection.md), [nelson.lang.correction.ReplaceIdentifierCorrection](../error_manager/nelson.lang.correction.ReplaceIdentifierCorrection.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
