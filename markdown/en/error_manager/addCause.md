# addCause

Add cause to MException.

## 📝 Syntax

- ME = addCause(ME, causeException)
- ME = ME.addCause(causeException)

## 📥 Input argument

- ME - a scalar MException object.
- causeException - a scalar MException object to add as a cause.

## 📤 Output argument

- ME - a new MException object containing the additional cause.

## 📄 Description


<b>addCause</b> returns a new MException object with <b>causeException</b> appended to the <b>cause</b> property. 

The original MException object is not modified.

## 💡 Examples



```matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
causeException = MException('MYFUN:BadSubscript', 'Index must be positive.');
newException = baseException.addCause(causeException)
```


```matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
newException = addCause(baseException, baseException)
newException.cause{1}
```


## 🔗 See also

[MException](../error_manager/MException.md), [addCorrection](../error_manager/addCorrection.md), [getReport](../error_manager/getReport.md), [throw](../error_manager/throw.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
