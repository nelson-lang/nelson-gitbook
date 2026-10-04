# violinplot

Display distributions as violin shapes.

## 📝 Syntax

- violinplot(y)
- violinplot(xgroupdata, y)
- violinplot('EvaluationPoints', evalPoints, 'DensityValues', densityValues)
- violinplot(..., propertyName, propertyValue)
- h = violinplot(...)

## 📄 Description

<b>violinplot</b> displays distributions as violin shapes and returns one or more <b>violinplot</b> graphics objects.

For vector data, the returned object keeps <b>XData</b> as group positions and <b>YData</b> as the original values. For matrix data, one object is returned for each column.

With <b>EvaluationPoints</b> and <b>DensityValues</b> and no sample data, <b>violinplot</b> draws precomputed densities: one violin per column, at positions 1, 2, ... Both arguments are then required, and they cannot be combined with sample data.

Each violin outlines a Gaussian kernel density estimate of its values, evaluated on 100 points from min(y) - 3h to max(y) + 3h. The bandwidth follows the normal reference rule with a robust scale: h = (MAD / 0.6745) \* (4 / (3 n))^(1/5), where MAD is the median absolute deviation. When the MAD is zero the data range is used as the scale, and constant data use h = 1.

The [violinplot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.violinplot.properties.md) page lists the supported object properties.

## 💡 Example

Display grouped distributions.

```matlab
violinplot([1 1 1 2 2 2], [1 2 2 3 4 5]);
```

<img src="violinplot_1.svg" align="middle"/>

## 🔗 See also

[boxchart](../../../graphics/1_plots/4_data_distribution_plots/boxchart.md), [violinplot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.violinplot.properties.md).
