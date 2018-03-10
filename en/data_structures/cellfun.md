

# cellfun

Evaluates an function on a cell.

## Syntax

- R = cellfun(function_name, ce)
- R = cellfun(function_handle, ce)
- [R1, ... , Rp] = cellfun(function_handle, ce1, ..., cep)
- [R1, ... , Rp] = cellfun(function_handle, ce1, ..., cep, name, value)

## Input argument

 - function_handle - a function handle.
 - ce1, ... , cep - cells with p inputs required for function_handle.
 - name, value pair - 'UniformOutput': true or false, 'ErrorHandler': a error function.

## Output argument

 - R1, ... , Rp - Outputs from function

## Description


  <p><b>cellfun</b> applies function to each cell elements.</p>


## Examples

```matlab
greetings = {'Hello', 'Guten Tag', 'Sawadee', 'Bonjour', 'Namaste', ''};
R = cellfun('size', greetings, 1)
R1 = cellfun('size', greetings, 2)
```
```matlab
C = {1:10, eye(3,4), eye(5,6)};
f = str2func('size');
[nrows_1, ncols_1] = cellfun(f, C,'UniformOutput', false)
[nrows_2, ncols_2] = cellfun(f, C,'UniformOutput', true)
```
functions to define for next example:
```matlab
function r = fun1(x, y)
r = x > y;
endfunction

function result = errorfun(S, varargin)
	disp(nargin())
	disp(S)
	disp(class(varargin))
	disp(size(varargin))
	disp(varargin{1})
	disp(varargin{2})
	result = false;
endfunction
```
```matlab
R = str2func('fun1');
H =  str2func('errorfun');
A = {rand(3)};
B = {rand(5)};
AgtA = cellfun(R, A, B, 'ErrorHandler', H, 'UniformOutput', true)
AgtB = cellfun(R, A, B, 'ErrorHandler', H, 'UniformOutput', false)
```

## See also

[cell](cell.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



