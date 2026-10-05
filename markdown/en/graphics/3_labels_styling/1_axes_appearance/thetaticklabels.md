# thetaticklabels

Set or get angular tick labels for polar axes.

## 📝 Syntax

- labels = thetaticklabels()
- thetaticklabels(labels)
- thetaticklabels('auto')
- thetaticklabels('manual')
- m = thetaticklabels('mode')
- thetaticklabels(ax, ...)

## 📥 Input argument

- labels - Cell array, string array, character vector, or numeric values converted to labels.
- 'auto' - Generate angular tick labels from angular tick values.
- 'manual' - Keep current angular tick labels.
- 'mode' - Return the angular tick label mode.
- ax - Target polar axes.

## 📤 Output argument

- labels - Cell array of angular tick labels.
- m - 'auto' or 'manual'.

## 📄 Description


<b>thetaticklabels</b> gets or sets labels displayed next to angular ticks. 

Setting labels switches angular tick label mode to <b>manual</b>. The number of displayed labels is matched with the number of visible angular ticks.

## 💡 Example

Set custom angular labels.

```matlab

polarplot(linspace(0, 2*pi, 80), ones(1, 80));
thetaticks(0:90:360);
thetaticklabels({'E'; 'N'; 'W'; 'S'; 'E'});
labels = thetaticklabels()

```


## 🔗 See also

[thetaticks](../../../graphics/3_labels_styling/1_axes_appearance/thetaticks.md), [rticklabels](../../../graphics/3_labels_styling/1_axes_appearance/rticklabels.md), [polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
