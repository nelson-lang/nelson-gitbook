# function

function declaration.

## 📝 Syntax

- function [out_1,...,out_M,varargout] = fname(in_1, ... , in_N, varargin)
- function fname(in_1, ... , in_N, varargin)
- function [out_1,...,out_M,varargout] = fname()
- function fname()

## 📄 Description

<b>function</b> opens a function definition.

<b>endfunction</b> closes a function definition (optional, but strongly recommended).

## 💡 Example

in a file: demo_function.m

```matlab

function r = demo_function(a, b)
  r = a + b;
endfunction

```

## 🔗 See also

[addpath](../functions_manager/addpath.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
