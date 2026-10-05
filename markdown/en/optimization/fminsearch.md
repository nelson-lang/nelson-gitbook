# fminsearch

Unconstrained derivative-free minimization.

## 📝 Syntax

- x = fminsearch(fun, x0)
- [x, fval, exitflag, output] = fminsearch(fun, x0, options)
- x = fminsearch(problem)

## 📥 Input argument

- fun - function handle or function name returning a scalar value.
- x0 - initial point.
- options - structure or solver options created with optimset or optimoptions.

## 📤 Output argument

- x - estimated minimizer.
- fval - objective value at x.
- exitflag - positive on convergence, zero on iteration or evaluation limit, negative when stopped by a callback.
- output - diagnostic structure.

## 📄 Description


<b>fminsearch</b> uses the Nelder-Mead simplex method. Supported controls include TolX, TolFun, MaxIter, MaxFunEvals, Display, OutputFcn and PlotFcns. A problem structure can contain objective, x0 and options fields.

## Used function(s)


    optimset
    optimoptions
  

## 📚 Bibliography

J. A. Nelder and R. Mead, "A simplex method for function minimization", The Computer Journal, 1965.
J. C. Lagarias, J. A. Reeds, M. H. Wright and P. E. Wright, "Convergence properties of the Nelder-Mead simplex method in low dimensions", SIAM Journal on Optimization, 1998.

## 💡 Example



```matlab
opts = optimset('TolX', 1e-8, 'TolFun', 1e-8);
[x, fval] = fminsearch(@(x) (x(1) - 1)^2 + (x(2) + 2)^2, [0 0], opts)

```


## 🔗 See also

[fminbnd](../optimization/fminbnd.md), [optimset](../optimization/optimset.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
