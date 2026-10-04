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

- R - an integer value: number of input arguments

## 📄 Description

<b>nargin</b> returns the number of input arguments of a function.

When called without an input argument, <b>nargin</b> returns the number of input arguments used to call the currently executing function.

When called with a function name or function handle, <b>nargin</b>returns the number of input arguments declared by that function.

If the last declared input argument is <b>varargin</b>, the returned value is negative. Its absolute value is the total number of declared input arguments, including <b>varargin</b>. For example, for a function declared as <b>f(a, b, varargin)</b>, <b>nargin('f')</b> returns <b>-3</b>.

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

<!--
## 👤 Author

Allan CORNET
-->
