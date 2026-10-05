# optim.problemdef.OptimizationExpression

Optimization expression.

## 📝 Syntax

- expr = optimexpr(...)
- expr = fcn2optimexpr(f, ...)

## 📥 Input argument

- value - numeric value, optimization variable, or expression used to create an expression.
- dimensions - dimensions used to create an array of zero expressions.

## 📤 Output argument

- expr - optimization expression object.

## 📄 Description


optim.problemdef.OptimizationExpression represents arithmetic expressions built from optimization variables. 

Expressions can be used as objectives or as parts of constraints in a problem-based model.

## Used function(s)


    optimexpr
    optimvar
  

## 💡 Example

Create a scalar expression from optimization variables.

```matlab
x = optimvar('x', 2, 1);
expr = (x(1) - 1)^2 + (x(2) - 2)^2
```


## 🔗 See also

[optimexpr](../optimization/optimexpr.md), [fcn2optimexpr](../optimization/fcn2optimexpr.md), [optimvar](../optimization/optimvar.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
