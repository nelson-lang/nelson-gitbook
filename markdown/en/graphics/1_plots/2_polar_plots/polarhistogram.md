# polarhistogram

Display angle data as a polar histogram.

## 📝 Syntax

- polarhistogram(theta)
- polarhistogram(theta, nbins)
- polarhistogram(..., 'BinEdges', edges)
- h = polarhistogram(...)

## 📄 Description


<b>polarhistogram</b> bins angle data and displays the bin counts as polar sectors.

## 💡 Example

Create a polar histogram.

```matlab
theta = 2*pi*rand(200, 1);
polarhistogram(theta, 16);
```
<img src="polarhistogram_1.svg" align="middle"/>


## 🔗 See also

[histogram](../../../graphics/1_plots/4_data_distribution_plots/histogram.md), [polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md).