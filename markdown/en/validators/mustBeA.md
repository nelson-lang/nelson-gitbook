# mustBeA

Checks that input value comes from one of specified classes.

## 📝 Syntax

- mustBeA(var, classNames)
- mustBeA(var, classNames, argPosition)
- C++: void mustBeA(const ArrayOfVector& args, const wstringVector &classNames, int argPosition)

## 📥 Input argument

- var - a variable.
- classNames - a variable: name of data type or class.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description


<b>mustBeA</b> checks that input value comes from one of specified classes. 

A value passes when its class, one of its superclasses, or one of the categories <b>numeric</b>, <b>float</b> and <b>integer</b> is listed in <b>classNames</b> (same rules as <b>isa</b>).

## 💡 Example



```matlab
mustBeA(1, 'double')
mustBeA([], ["double", "single"])
```


## 🔗 See also

[mustBeNumeric](../validators/mustBeNumeric.md), [isa](../types/isa.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | superclasses and numeric, float, integer categories accepted. |

<!--
## 👤 Author

Allan CORNET
-->
