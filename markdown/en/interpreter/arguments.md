# arguments

function argument validation block.

## 📝 Syntax

- arguments, argSpecs, end
- arguments (Input), argSpecs, end
- arguments (Repeating), argSpecs, end
- arguments (Output), argSpecs, end
- arguments (Output,Repeating), argSpec, end

## 📄 Description

<b>arguments ... end</b> declares input arguments for a function. The block is optional. If one or more <b>arguments</b> blocks are included, they must all appear before the first executable line of the function. A block with no qualifier is treated as an input block.

Each argument declaration follows this form:

<code>argName (dimensions) class {validators} = defaultValue</code>

<b>(dimensions)</b> — Input size specified as a comma-separated list of integers or colons, e.g. <code>(1,1)</code>, <code>(1,:)</code>, or <code>(3,5,2)</code>. A colon allows any length in that dimension. The input must match the declared dimensions exactly, or be compatible with them (for example a column vector is compatible with <code>(1,:)</code> and is reshaped automatically). Expressions are not allowed inside dimensions.

<b>class</b> — A single class name such as <code>double</code>, <code>char</code>, or <code>string</code>. The value is converted to that class when possible. If omitted, any class is accepted.

<b>{validators}</b> — A comma-separated list of validation functions enclosed in braces, e.g. <code>{mustBeNumeric, mustBeReal}</code>. Validation functions throw an error when the condition is not met; unlike class, they never modify the argument value.

<b>= defaultValue</b> — An expression that provides a default value and makes the argument optional. The expression may reference previously declared arguments. Optional arguments must be positioned after all required arguments in the function signature and in the <b>arguments</b> block.

<b>arguments (Repeating) ... end</b> declares repeating input arguments. A function may contain only one repeating input block. Nelson creates a cell array for each repeating argument containing all values passed for that argument. If the function also has name-value arguments, those must be declared in a separate <b>arguments</b> block after the repeating block.

<b>arguments (Output) ... end</b> declares output arguments. Output blocks must appear after all input blocks but before the first executable line of the function. When both input and output blocks are present, using the explicit <b>(Input)</b> and <b>(Output)</b> qualifiers is recommended for readability. Output arguments cannot define default values, and validation functions applied to an output argument cannot reference other output arguments.

<b>arguments (Output,Repeating) ... end</b> declares a single repeating output argument. At most one repeating output argument is allowed per function.<code>varargout</code> may appear in a repeating output block only when it is the sole output argument.

For name-value arguments, use <code>nv.name</code> notation in the <b>arguments</b> block, where <code>nv</code> matches the structure name used in the function signature.

<b>arguments</b> blocks cannot be used in nested functions, abstract methods, or handle class destructor methods.

## 💡 Examples

Restrict size and type of an input argument. A column vector is accepted because it is compatible with size (1,:) and is reshaped automatically.

```matlab

function [m, s] = twoStats(x)
  arguments
    x (1,:) {mustBeNumeric}
  end
  m = mean(x, 'all');
  s = std(x, 1, 'all');
end

```

Optional argument with a default value derived from a previously declared argument.

```matlab

function c = myMul(a, b, c)
  arguments
    a uint32
    b uint32
    c uint32 = a .* b
  end
end

```

Use validation functions to restrict argument values. The method argument is optional and defaults to 'linear'.

```matlab

function r = myInterp(x, method)
  arguments
    x (1,:) double {mustBeNumeric, mustBeReal}
    method (1,:) char {mustBeMember(method, {'linear', 'nearest'})} = 'linear'
  end
  r = {x, method};
end

```

Declare optional name-value arguments using a structure. Both options.LineStyle and options.LineWidth have default values, so they are optional.

```matlab

function myRectangle(X, Y, options)
  arguments
    X double
    Y double
    options.LineStyle (1,1) string = "-"
    options.LineWidth (1,1) {mustBeNumeric} = 1
  end
  % Function code
end

```

Declare repeating input arguments. Nelson creates a cell array for each repeating argument.

```matlab

function fRepeat(x, y, style)
  arguments (Repeating)
    x (1,:) double
    y (1,:) double
    style {mustBeMember(style, {'--', ':'})}
  end
  z = reshape([x; y; style], 1, []);
  if ~isempty(z)
    plot(z{:});
  end
end

```

Validate both input and output arguments using separate blocks.

```matlab

function out = myFunction(A, B, C)
  arguments (Input)
    A (1,1) string
    B (1,:) double
    C (2,2) cell
  end
  arguments (Output)
    out (1,:) double
  end
  out = B;
end

```

Repeating input and output arguments with validation. Restricts both inputs and outputs to row vectors.

```matlab

function vectorSum = repeatSum(a, b)
  arguments (Input,Repeating)
    a (1,:)
    b (1,:)
  end
  arguments (Output,Repeating)
    vectorSum (1,:)
  end
  n = numel(a);
  vectorSum{n} = a{n} + b{n};
  for i = 1:n-1
    vectorSum{i} = a{i} + b{i};
  end
end

```

## 🔗 See also

[function](../interpreter/function.md), [iskeyword](../interpreter/iskeyword.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
