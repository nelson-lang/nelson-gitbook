# nargin

Returns the number of input arguments.

## 📝 Syntax

- R = nargin()
- R = nargin(function_name)
- R = nargin(function_handle)

## 📥 Input argument

- function_name - a string: function name
- function_handle - a function handle

## 📤 Output argument

- R - an integer value: number of input argument

## 📄 Description

<b>nargin</b> returns the number of input arguments of an function.

If the last input argument of the function is <b>varargin</b> the returned value is negative.

## 💡 Examples

With an macro function:

```matlab
nargin('getfield')
```

With an builtin function:

```matlab
nargin('cos')
```

## 🔗 See also

[nargout](../core/nargout.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
