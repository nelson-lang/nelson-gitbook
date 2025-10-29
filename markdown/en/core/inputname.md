# inputname

Get variable name of function input.

## 📝 Syntax

- s = inputname(argNumber)

## 📥 Input argument

- argNumber - a scalar, real, positive integer value: Number of function input argument

## 📤 Output argument

- s - character vector: variable name

## 📄 Description

<b>inputname</b> get variable name of function input.

<b>inputname</b> is only useable within a function

## 💡 Example

```matlab
function R = getinputname(varargin)
    R = string([]);
    for i = 1:nargin
        R = [R, string(inputname(i))];
    end
end
```

## 🔗 See also

[nargin](../core/nargin.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
