# pareto

Display Pareto chart.

## 📝 Syntax

- pareto(y)
- pareto(y, threshold)
- pareto(y, labels)
- pareto(y, labels, threshold)
- pareto(parent, ...)
- h = pareto(...)

## 📄 Description

<b>pareto</b> sorts nonnegative values in descending order, displays bars, and overlays a cumulative line. <b>threshold</b> is a scalar between 0 and 1 that controls how many sorted labels are displayed.

## 💡 Example

Create a Pareto chart.

```matlab
pareto([5 20 10], {'A', 'B', 'C'});
```

<img src="pareto_1.svg" align="middle"/>

## 🔗 See also

[bar](../../../graphics/1_plots/6_discrete_data_plots/bar.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).
