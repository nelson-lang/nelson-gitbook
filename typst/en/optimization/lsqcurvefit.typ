#import "nelson_help.typ": *

= lsqcurvefit <optimization:lsqcurvefit>

Least-squares curve fitting.

== Syntax

- #raw("x = lsqcurvefit(fun, x0, xdata, ydata)");
- #raw("x = lsqcurvefit(fun, x0, xdata, ydata, lb, ub, options)");

== Input argument

/ fun: Model function handle.
/ x0: Initial point.
/ xdata: Input data for the model.
/ ydata: Observed response data.

== Output argument

/ x: Fitted parameters.

== Description

#strong[lsqcurvefit]; minimizes #strong[fun(x, xdata) - ydata]; using #strong[lsqnonlin];.


== Example

``````matlab
x = lsqcurvefit(@(p,t) p(1) * exp(p(2) * t), [1; 0], (0:3).', exp((0:3).'))
``````


== See also

#nlink(<optimization:lsqnonlin>)[lsqnonlin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
