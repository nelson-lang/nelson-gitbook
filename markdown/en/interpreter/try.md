# try

try/catch statement.

## 📝 Syntax

- try, statements\_1, catch, statements\_2, end
- try, statements\_1, catch exception, statements\_2, end

## 📄 Description


<b>try</b> and<b>catch</b> statements are used for error handling and control in files. 

<b>exception</b> is an<b>MException</b> object that allows you to identify the error. 

The catch block assigns the current exception object to the variable in exception.

## 💡 Examples

try/catch in a script file

```matlab
try
error('an error')
catch
  disp('error caught')
end
```
try/catch in a script file

```matlab
try
error('an error')
catch ME
  ME
end
```


## 🔗 See also

[run](../core/run.md), [execstr](../core/execstr.md), [MException](../error_manager/MException.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
