# lasterror

Returns last recorded error message.

## 📝 Syntax

- last_err = lasterror()
- lasterror('reset')
- lasterror(error_struct)

## 📤 Output argument

- last_err - error message structure.

## 📄 Description

<b>l = lasterror()</b> returns a structure containing the last error message and information as an struct.

<b>lasterror('reset')</b> clears last error.

<b>lasterror(error_struct)</b> set last error.

## 💡 Examples

```matlab
state = execstr('xxxxxx', 'errcatch')
if ~state
  l = lasterror()
end
```

```matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror();
lasterror('reset');
lasterror()
lasterror(l);
lasterror()
```

## 🔗 See also

[error](../error_manager/error.md), [warning](../error_manager/warning.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
