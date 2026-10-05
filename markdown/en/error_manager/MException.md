# MException

Exception information.

## 📝 Syntax

- ME = MException(identifier, message)
- ME = MException(identifier, format, A, ...)
- ME = addCause(ME, causeException)
- ME = ME.addCause(causeException)
- ME = addCorrection(ME, correction)
- report = getReport(ME)
- report = ME.getReport(type)
- exception = MException.last
- MException.last('reset')

## 📥 Input argument

- identifier - a string: error identifier.
- message - a string.
- format - a string used to format the error message.
- causeException - a scalar MException object.
- correction - a nelson.lang.correction object.
- type - 'basic' or 'extended'.

## 📤 Output argument

- ME - a MException object.
- report - a string: formatted exception report.

## 📄 Description


All Nelson code that detects an error and throws an exception constructs an MException object. 

identifier includes one or more component fields and a mnemonic field (example: 'nelson:matrix:empty'). 

<b>MException</b> is a built-in class. It has the read-only properties <b>identifier</b>, <b>message</b>, <b>cause</b>, <b>stack</b>, and <b>Correction</b>. 

<b>ME = MException(identifier, format, A, ...)</b> formats the message using the same formatting rules as <b>sprintf</b>. 

<b>addCause</b> returns a new MException object with an additional cause. 

<b>addCorrection</b> returns a new MException object with a correction object. Nelson correction objects are in the <b>nelson.lang.correction</b> package. 

<b>getReport</b> returns a formatted exception report. 

<b>MException.last</b> returns the last uncaught exception recorded by the evaluator. <b>MException.last('reset')</b> clears it.

## 💡 Examples



```matlab
ME = MException('nelson:identifier', 'your error message.');
throw(ME)
```


```matlab
ME = MException('nelson:badIndex', 'Unable to index into array %s.', 'A');
causeException = MException('nelson:badSubscript', 'Index must be positive.');
ME = ME.addCause(causeException)
getReport(ME, 'basic')
```


```matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
```


## 🔗 See also

[error](../error_manager/error.md), [try](../interpreter/try.md), [throw](../error_manager/throw.md), [rethrow](../error_manager/rethrow.md), [throwAsCaller](../error_manager/throwAsCaller.md), [addCause](../error_manager/addCause.md), [addCorrection](../error_manager/addCorrection.md), [getReport](../error_manager/getReport.md), [MException.last](../error_manager/MException.last.md), [lasterror](../error_manager/lasterror.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
