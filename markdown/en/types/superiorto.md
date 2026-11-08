# superiorto

Declare superior class precedence.

## 📝 Syntax

- superiorto(class1, ...)

## 📥 Input argument

- class1, ... - class names, as character vectors.

## 📄 Description


<b>superiorto(class1, ...)</b> declares that the class being defined has higher precedence than the named classes when dispatching overloaded operators. 

It is called from a class constructor.

## 💡 Example



```matlab
superiorto('double')
```


## 🔗 See also

[inferiorto](../types/inferiorto.md), [class](../types/class.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
