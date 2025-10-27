# nargout

Returns the number of output arguments.

## 📝 Syntax

- R = nargout()
- R = nargout(function_name)
- R = nargout(function_handle)

## 📥 Input argument

- function_name - a string: function name
- function_handle - a function handle

## 📤 Output argument

- R - an integer value: number of output argument

## 📄 Description

<b>nargout</b> returns the number of output arguments of an function.

If the last output argument of the function is <b>varargout</b> the returned value is negative.

## 💡 Examples

With an macro function:

```matlab
nargout('cellstr')
```

With an builtin function:

```matlab
nargout('cos')
```

## 🔗 See also

[nargin](../core/nargin.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
