# polarbubblechart

Display bubble chart in polar coordinates.

## 📝 Syntax

- polarbubblechart(theta, rho, sz)
- polarbubblechart(theta, rho, sz, color)
- polarbubblechart(tbl, thetavar, rhovar, szvar)
- polarbubblechart(tbl, thetavar, rhovar, szvar, colorvar)
- polarbubblechart(parent, ...)
- h = polarbubblechart(...)

## 📄 Description

<b>polarbubblechart</b> displays polar markers whose size is controlled by bubble size data.

Table input selects theta, radius, size, and optional color data from variables in <b>tbl</b>. Multiple selected variables create multiple <b>bubblechart</b> objects.

## 💡 Examples

Create a polar bubble chart.

```matlab
theta = linspace(0, 2*pi, 12);
rho = 1 + cos(theta).^2;
sz = 20 + 60 * abs(sin(theta));
polarbubblechart(theta, rho, sz, 'b');
```

<img src="polarbubblechart_1.svg" align="middle"/>
Create a polar bubble chart from a table.

```matlab
t = table([0; pi/4; pi/2], [1; 2; 3], [25; 36; 49], [1; 2; 3], ...
  'VariableNames', {'theta', 'rho', 'sz', 'c'});
h = polarbubblechart(t, 'theta', 'rho', 'sz', 'c');
```

<img src="polarbubblechart_2.svg" align="middle"/>

## 🔗 See also

[bubblechart](../../../graphics/1_plots/4_data_distribution_plots/bubblechart.md), [polarscatter](../../../graphics/1_plots/2_polar_plots/polarscatter.md).
