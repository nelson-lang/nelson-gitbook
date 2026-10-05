# lsqcurvefit

Least-squares curve fitting.

## 📝 Syntax

- x = lsqcurvefit(fun, x0, xdata, ydata)
- x = lsqcurvefit(fun, x0, xdata, ydata, lb, ub, options)

## 📥 Input argument

- fun - Model function handle.
- x0 - Initial point.
- xdata - Input data for the model.
- ydata - Observed response data.

## 📤 Output argument

- x - Fitted parameters.

## 📄 Description


<b>lsqcurvefit</b> minimizes <b>fun(x, xdata) - ydata</b> using <b>lsqnonlin</b>.

## 💡 Example



```matlab
x = lsqcurvefit(@(p,t) p(1) * exp(p(2) * t), [1; 0], (0:3).', exp((0:3).'))
```


## 🔗 See also

[lsqnonlin](../optimization/lsqnonlin.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
