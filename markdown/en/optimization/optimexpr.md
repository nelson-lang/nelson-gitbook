# optimexpr

Create an optimization expression.

## 📝 Syntax

- expr = optimexpr()
- expr = optimexpr(value)

## 📥 Input argument

- value - numeric value or expression seed.

## 📤 Output argument

- expr - optimization expression object.

## 📄 Description


<b>optimexpr</b> creates an expression object that can be combined with optimization variables by arithmetic operators.

## Used function(s)


    optimvar
    evaluate
  

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example



```matlab
x = optimvar('x');
expr = optimexpr(3) + x^2;
value = evaluate(expr, struct('x', 2))

```


## 🔗 See also

[evaluate](../optimization/evaluate.md), [optimconstr](../optimization/optimconstr.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
