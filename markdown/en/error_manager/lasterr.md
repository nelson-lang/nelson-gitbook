# lasterr

Returns or sets last recorded error message.

## 📝 Syntax

- msg = lasterr()
- [msg, id] = lasterr()
- previous = lasterr(msg)
- previous = lasterr(msg, id)

## 📥 Input argument

- msg - error message: character vector or string scalar.
- id - error identifier: character vector or string scalar.

## 📤 Output argument

- msg - last error message: character vector.
- id - last error identifier: character vector.

## 📄 Description

<b>msg = lasterr()</b> returns the message of the last recorded error.

<b>[msg, id] = lasterr()</b> also returns the error identifier.

<b>lasterr(msg)</b> and <b>lasterr(msg, id)</b> set the last error message (and identifier), returning the previous message.

## 💡 Example

```matlab
try
  error('MyPkg:boom', 'exploded');
catch
end
[msg, id] = lasterr()
```

## 🔗 See also

[lasterror](../error_manager/lasterror.md), [error](../error_manager/error.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
