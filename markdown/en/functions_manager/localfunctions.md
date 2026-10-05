# localfunctions

Return handles to local functions in the current file.

## 📝 Syntax

- fh = localfunctions()

## 📤 Output argument

- fh - a cell array of function handles.

## 📄 Description


<b>localfunctions</b> returns a cell array of handles to local functions defined in the current file. 

If the current context is not a file with local functions, the result is an empty cell array.

## 💡 Examples

Call localfunctions from the command context.

```matlab
fh = localfunctions()
isequal(fh, {})
```
Return and call handles to local functions from a file.

```matlab
% Save this code in a file named localfunctions_demo.m:
%
% function names = localfunctions_demo()
%   fh = localfunctions();
%   names = {func2str(fh{1}); func2str(fh{2})};
%   disp(fh{1}(3))
%   disp(fh{2}(3))
% end
%
% function y = add_one(x)
%   y = x + 1;
% end
%
% function y = double_value(x)
%   y = 2 * x;
% end

names = localfunctions_demo()
% Expected names:
% {'add_one'; 'double_value'}
```


## 🔗 See also

[which](../functions_manager/which.md), [func2str](../function_handle/func2str.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
