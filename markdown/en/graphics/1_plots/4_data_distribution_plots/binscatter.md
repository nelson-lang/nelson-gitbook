# binscatter

Display binned scatter plot.

## 📝 Syntax

- binscatter(x, y)
- binscatter(x, y, n)
- binscatter(..., 'XLimits', limits, 'YLimits', limits)
- binscatter(..., Name, Value)
- binscatter(parent, ...)
- h = binscatter(...)

## 📄 Description


<b>binscatter</b> counts points in two-dimensional bins and displays the counts as a native binscatter chart object. 

<b>Values</b>, <b>XBinEdges</b>, and <b>YBinEdges</b> are computed read-only properties. 

When the axes are zoomed, the chart recomputes smaller bins so the visible region keeps approximately the requested bin density. 

See [binscatter properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.binscatter.properties.md) for the complete property list.

## 💡 Examples

Display binned scatter density.

```matlab
x = randn(1000, 1);
y = x + 0.5 * randn(1000, 1);
h = binscatter(x, y, [30 30]);
h.FaceAlpha = 0.9;
```
<img src="binscatter_1.svg" align="middle"/>
Inspect computed bin values and edges.

```matlab
x = [0.1 0.2 0.8 1.2 1.8 1.9];
y = [0.1 0.9 0.8 1.2 1.1 1.9];
h = binscatter(x, y, [2 2], 'XLimits', [0 2], 'YLimits', [0 2]);
h.Values
h.XBinEdges
h.YBinEdges
```


## 🔗 See also

[binscatter properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.binscatter.properties.md), [scatter](../../../graphics/1_plots/4_data_distribution_plots/scatter.md), [histogram2](../../../graphics/1_plots/4_data_distribution_plots/histogram2.md).