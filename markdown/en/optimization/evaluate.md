# evaluate

Evaluate an optimization expression.

## 📝 Syntax

- value = evaluate(expr, values)

## 📥 Input argument

- expr - optimization expression or variable.
- values - structure containing variable values.

## 📤 Output argument

- value - evaluated numeric value.

## 📄 Description


<b>evaluate</b> computes the numeric value of a problem-based expression for a given assignment of variables.

## Used function(s)


    optimexpr
    optimvar
  

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example



```matlab
x = optimvar('x');
expr = (x - 4)^2;
value = evaluate(expr, struct('x', 3))

```


## 🔗 See also

[optimexpr](../optimization/optimexpr.md), [show](../optimization/show.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
