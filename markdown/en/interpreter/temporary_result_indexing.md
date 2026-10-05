# temporary result indexing

index into the result of a function call or expression.

## 📝 Syntax

- f().field
- f()(index)
- f(){index}
- (expression).field
- (expression)(index)
- (expression){index}

## 📄 Description


Temporary result indexing applies field, parenthesis, or brace indexing directly to the result of a function call or expression. 

This syntax avoids assigning an intermediate value when only one field or element is needed. 

Supported forms include dot indexing, matrix or array indexing with parentheses, and cell content indexing with braces.

## 💡 Examples

Index a function call result.

```matlab

names = dir(nelsonroot())(3).name;
secondCharacter = dir(nelsonroot())(3).name(2);

```
Index literal temporary values.

```matlab

x = [10 20 30](2);
y = {10, 20}{2};
z = 'abc'(2);

```


## 🔗 See also

[function](../interpreter/function.md), [name=value](../interpreter/name_value_syntax.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
