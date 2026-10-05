# swarmchart

Display a 2-D swarm chart.

## 📝 Syntax

- swarmchart(x, y)
- swarmchart(x, y, sz, c)
- swarmchart(..., propertyName, propertyValue)
- h = swarmchart(...)

## 📄 Description


<b>swarmchart</b> displays points using a scatter object. The returned object keeps the original <b>XData</b> and <b>YData</b> and uses scatter jitter properties for the displayed x positions. 

Supported chart properties are <b>XJitter</b>, <b>XJitterWidth</b>, and <b>ColorVariable</b>. Other arguments are forwarded to <b>scatter</b>.

## 💡 Example

Display grouped observations.

```matlab
swarmchart([1 1 1 2 2 2], [4 5 3 7 6 8], 'filled');
```
<img src="swarmchart_1.svg" align="middle"/>


## 🔗 See also

[scatter](../../../graphics/1_plots/4_data_distribution_plots/scatter.md), [swarmchart3](../../../graphics/1_plots/4_data_distribution_plots/swarmchart3.md).