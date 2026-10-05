# fzero

Zero of a scalar function.

## 📝 Syntax

- x = fzero(fun, x0)
- [x, fval, exitflag, output] = fzero(fun, x0, options)
- x = fzero(problem)

## 📥 Input argument

- fun - scalar function.
- x0 - initial scalar value or two-point bracketing interval.
- options - solver options.

## 📤 Output argument

- x - estimated zero.
- fval - function value at x.
- exitflag - termination indicator.
- output - diagnostics.

## 📄 Description


<b>fzero</b> uses a Brent-Dekker bracketing method. If x0 is scalar, Nelson searches a sign-changing interval around it. A problem structure can contain objective, x0 and options fields.

## Used function(s)


    optimset
  

## 📚 Bibliography

T. J. Dekker, "Finding a zero by means of successive linear interpolation", Constructive Aspects of the Fundamental Theorem of Algebra, 1969.
R. P. Brent, Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973.

## 💡 Example



```matlab
[x, fval] = fzero(@(x) x^2 - 4, [0 5])

```


## 🔗 See also

[fsolve](../optimization/fsolve.md), [optimset](../optimization/optimset.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
