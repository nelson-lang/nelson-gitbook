# swarmchart3

Display a 3-D swarm chart.

## 📝 Syntax

- swarmchart3(x, y, z)
- swarmchart3(x, y, z, sz, c)
- swarmchart3(..., propertyName, propertyValue)
- h = swarmchart3(...)

## 📄 Description

<b>swarmchart3</b> displays 3-D points using a scatter object. The returned object keeps the original <b>XData</b>, <b>YData</b>, and <b>ZData</b> and uses scatter jitter properties for the displayed x and y positions.

Supported chart properties are <b>XJitter</b>, <b>XJitterWidth</b>, <b>YJitter</b>, <b>YJitterWidth</b>, and <b>ColorVariable</b>.

## 💡 Example

Display 3-D grouped observations.

```matlab
swarmchart3([1 1 2 2], [1 2 1 2], [4 5 6 7], 40, [0 0.4 0.8], 'filled');
```

<img src="swarmchart3_1.svg" align="middle"/>

## 🔗 See also

[scatter3](../../../graphics/1_plots/4_data_distribution_plots/scatter3.md), [swarmchart](../../../graphics/1_plots/4_data_distribution_plots/swarmchart.md).
