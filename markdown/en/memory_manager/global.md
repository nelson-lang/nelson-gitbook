# global

Defines a global variable.

## 📝 Syntax

- global variable\_name
- global(variable\_name)
- global variable\_name1 ... variable\_nameN

## 📥 Input argument

- variable\_name - a string: valid variable name.

## 📄 Description


<b>global</b> make variable in global assign value to a variable in a specified variables scope.

## 💡 Example



```matlab
function myfun()
global y;
y = 1;
end

myfun()
who
global y
who
disp(y)
who
clear global y
disp(y)
```


## 🔗 See also

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
