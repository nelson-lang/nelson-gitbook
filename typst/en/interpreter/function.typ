#import "nelson_help.typ": *

= function <interpreter:function>

function declaration.

== Syntax

- #raw("function [out_1,...,out_M,varargout] = fname(in_1, ... , in_N, varargin)");
- #raw("function fname(in_1, ... , in_N, varargin)");
- #raw("function [out_1,...,out_M,varargout] = fname()");
- #raw("function fname()");
- #raw("function nestedFunction(...), statements, end");
- #raw("function fname(...), statements, end");
- #raw("script statements, function localFunction(...), statements, end, script statements");

== Description

#strong[function]; opens a function definition.

 #strong[end]; closes a function definition. The legacy #strong[endfunction]; keyword is not supported.

 Function files may end at end-of-file for simple function bodies, but explicit #strong[end]; is required to close nested functions, local functions, and block constructs unambiguously.

 A function may be written on a single line by placing a #strong[,]; or #strong[;]; after the signature, for example #strong[function y \= f(x), y \= x + 1; end];.

 Function files can contain local functions after the main function. Script files can contain local functions interleaved with executable script statements: a local function may appear before, between, or after script statements, and script statements may follow a local function definition.

 Local functions in scripts must be closed with an explicit #strong[end];. Nelson still rejects local functions declared inside open statement contexts such as #strong[if];, #strong[for];, #strong[while];, #strong[switch];, and #strong[try];.

 Nested functions are supported inside parent function bodies. Nested functions can read and update variables from their parent function workspace, and handles to nested functions keep their captured state.


== Examples

in a file: demo\_function.m

``````matlab

function r = demo_function(a, b)
  r = a + b;
end

``````

Nested function sharing a parent variable.

``````matlab

function y = nested_demo(x)
  scale = 2;
  y = inner(x);

  function r = inner(v)
    r = v * scale;
  end
end

``````

Script with trailing local functions.

``````matlab

x = local_add_one(41);

function y = local_add_one(v)
  y = v + 1;
end

``````

Script with local functions interleaved between statements.

``````matlab

a = 10;

function y = times_two(v)
  y = v * 2;
end

b = times_two(a);

function z = minus_one(v)
  z = v - 1;
end

c = minus_one(b)

``````


== See also

#nlink(<functions_manager:addpath>)[addpath];, #nlink(<interpreter:arguments>)[arguments];, #nlink(<interpreter:temporary_result_indexing>)[temporary result indexing];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [local functions can be interleaved with script statements.],
)

// Author: Allan CORNET
