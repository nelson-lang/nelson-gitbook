# fcn2optimexpr

Convert a function to an optimization expression.

## 📝 Syntax

- expr = fcn2optimexpr(fcn, in1, ..., inN)
- expr = fcn2optimexpr(fcn, in1, ..., inN, name, value)

## 📥 Input argument

- fcn - function handle to convert into an optimization expression.
- in1, ..., inN - input arguments passed to <b>fcn</b>: optimization variables, optimization expressions, or numeric constants.
- name, value - optional name-value arguments: 'OutputSize', 'ReuseEvaluation', 'Analysis'.

## 📤 Output argument

- expr - optimization expression object.

## 📄 Description


<b>fcn2optimexpr</b> converts a function into an optimization expression, so that functions that cannot be composed from the supported elementary operators can still be used as objectives or constraints in a problem-based model. 

When the expression is evaluated, each input argument is evaluated for the current variable values, then <b>fcn</b> is called on the resulting numeric values.

## Used function(s)


    optimvar
    optimexpr
    evaluate
  

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Examples

Wrap a scalar function of one variable.

```matlab
x = optimvar('x');
expr = fcn2optimexpr(@(v) sin(v), x);
value = evaluate(expr, struct('x', pi / 2))

```
Use a converted function as an objective.

```matlab
x = optimvar('x');
prob = optimproblem('Objective', fcn2optimexpr(@(v) (v - 3) .^ 2 + 1, x));
[sol, fval] = solve(prob, struct('x', 0))

```


## 🔗 See also

[optimexpr](../optimization/optimexpr.md), [optimvar](../optimization/optimvar.md), [evaluate](../optimization/evaluate.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
