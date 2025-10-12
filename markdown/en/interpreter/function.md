# function

function declaration.

## Syntax

- function [out_1,...,out_M,varargout] = fname(in_1, ... , in_N, varargin)
- function fname(in_1, ... , in_N, varargin)
- function [out_1,...,out_M,varargout] = fname()
- function fname()

## Description

<p>
            function opens a function definition.</p>

<p>
                endfunction closes a function definition (optional, but strongly recommended).</p>

## Example

in a file: demo_function.m

```matlab

function r = demo_function(a, b)
  r = a + b;
endfunction

```

## See also

[addpath](../functions_manager/addpath.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
