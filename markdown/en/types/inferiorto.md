# inferiorto

Declare inferior class precedence.

## 📝 Syntax

- inferiorto(class1, ...)

## 📥 Input argument

- class1, ... - class names, as character vectors.

## 📄 Description


<b>inferiorto(class1, ...)</b> declares that the class being defined has lower precedence than the named classes when dispatching overloaded operators. 

It is called from a class constructor.

## 💡 Example



```matlab
inferiorto('double')
```


## 🔗 See also

[superiorto](../types/superiorto.md), [class](../types/class.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
