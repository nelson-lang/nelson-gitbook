# optimvar

Create optimization variables.

## 📝 Syntax

- x = optimvar(name)
- x = optimvar(name, n, m, name, value)

## 📥 Input argument

- name - variable name.
- n, m - variable dimensions.
- name, value - variable properties such as LowerBound, UpperBound and Type.

## 📤 Output argument

- x - optimization variable object.

## 📄 Description


<b>optimvar</b> creates scalar or array variables used in problem-based expressions. Vector variables can be indexed with parentheses in expressions.

## Used function(s)


    optimproblem
    optimexpr
  

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example



```matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
expr = (x(1) - 1)^2 + (x(2) - 2)^2

```


## 🔗 See also

[optimproblem](../optimization/optimproblem.md), [optimexpr](../optimization/optimexpr.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
