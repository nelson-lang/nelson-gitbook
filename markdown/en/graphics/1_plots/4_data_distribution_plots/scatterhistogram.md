# scatterhistogram

Display a scatter plot with marginal histograms.

## 📝 Syntax

- scatterhistogram(x, y)
- scatterhistogram(..., 'NumBins', n)
- scatterhistogram(..., 'MarkerStyle', marker)
- h = scatterhistogram(...)

## 📄 Description


<b>scatterhistogram</b> creates a scatter plot and displays histograms for the x and y data distributions. 

The returned object has type <b>scatterhistogram</b>. See [scatterhistogram properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.scatterhistogram.properties.md) for the complete property list.

## 💡 Example

Create a scatter histogram.

```matlab
x = randn(200, 1);
y = 0.5 * x + randn(200, 1);
scatterhistogram(x, y, 'NumBins', 20);
```
<img src="scatterhistogram_1.svg" align="middle"/>


## 🔗 See also

[scatter](../../../graphics/1_plots/4_data_distribution_plots/scatter.md), [histogram](../../../graphics/1_plots/4_data_distribution_plots/histogram.md), [binscatter](../../../graphics/1_plots/4_data_distribution_plots/binscatter.md), [scatterhistogram properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.scatterhistogram.properties.md).