# setfield

Set structure field contents.

## 📝 Syntax

- stOut = setfield(stIn, fieldname, fieldvalue)
- stOut = setfield(stIn, fieldname1, fieldvalue1, ..., fieldnameN, fieldvalueN)

## 📥 Input argument

- stIn - a structure.
- fieldname - a string or characters vector.
- fieldvalue - a variable value.

## 📤 Output argument

- stOut - a structure: result.

## 📄 Description

Set the contents of the specified field to the value.

Alternative syntax: S.(fieldname) = fieldvalue

Alternative syntax: S(idx1, idx2).(fieldname) = fieldvalue

## 💡 Example

```matlab
A = {};
setfield(A, 'vv', 3)
```

## 🔗 See also

[struct](../data_structures/struct.md), [getfield](../data_structures/getfield.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
