# stackedplot

Plot variables in stacked axes.

## 📝 Syntax

- s = stackedplot(tbl)
- s = stackedplot(tbl1, ..., tblN)
- s = stackedplot({tbl1, ..., tblN})
- s = stackedplot(tt)
- s = stackedplot(tbl, vars)
- s = stackedplot(X, Y)
- s = stackedplot(..., LineSpec)
- s = stackedplot(parent, ...)
- s = stackedplot(..., Name, Value)
- s = stackedplot(..., Name=Value)

## 📥 Input argument

- tbl - a table.
- tt - a timetable.
- vars - variables to display: names, numeric indices, logical selector, or a cell array of groups.
- X, Y - numeric, logical, datetime, or duration arrays.

## 📤 Output argument

- s - a StackedLineChart graphics object.

## 📄 Description

<b>stackedplot</b> creates one axes for each selected variable and returns a <b>StackedLineChart</b> object.

For timetables, row times are used as x values. For tables, row numbers are used unless <b>XVariable</b> is specified.

Multiple table or timetable inputs are accepted. Variables with matching names are combined in the same y-axis by default. Use <b>CombineMatchingNames</b> set to <b>false</b> to place matching variables in separate y-axes.

<b>LineSpec</b> sets line style, marker, and color for all plotted lines. A parent figure can be supplied as the first input.

Use grouped variables such as <b>{{'A','B'}, 'C'}</b> to plot several variables in one stacked axes.

Unsupported table variables are skipped. An error is raised if no plottable variable remains. Up to 25 variables can be displayed.

See [stackedplot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.md) for the complete property list.

## 💡 Examples

Plot selected variables from a table and edit chart properties.

```matlab

close all
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Temperature, Pressure, Rain);
s = stackedplot(T, {'Temperature', 'Rain'}, ...
  'DisplayLabels', {'Temperature', 'Rainfall'}, ...
  'GridVisible', 'on', ...
  'Title', 'Weather sample', ...
  'XLabel', 'Sample');
s.LineProperties(1).LineWidth = 2;
s.LineProperties(1).Marker = 'o';
s.AxesProperties(2).YLimits = [0 1.2];

```

<img src="stackedplot_1.svg" align="middle"/>
Use a table variable as the x-axis.

```matlab

close all
Time = datetime(2026, 1, 1) + hours(0:5)';
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Time, Temperature, Pressure, Rain);
s = stackedplot(T, {'Temperature', 'Pressure', 'Rain'}, 'XVariable', 'Time');
s.Title = 'Weather over time';

```

Plot grouped variables in one axes.

```matlab

close all
Time = (1:6)';
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Time, Temperature, Pressure, Rain);
s = stackedplot(T, {{'Temperature', 'Rain'}, 'Pressure'}, ...
  'XVariable', 'Time', ...
  'LegendVisible', 'on');

```

Plot timetable variables against row times.

```matlab

close all
Time = datetime(2026, 1, 1) + hours(0:5)';
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
TT = timetable(Time, Temperature, Pressure, Rain, ...
  'VariableNames', {'Temperature', 'Pressure', 'Rain'});
s = stackedplot(TT);
s.GridVisible = 'on';

```

Plot numeric arrays.

```matlab

close all
X = (0:0.5:5)';
Y = [sin(X), cos(X), sin(X) .* cos(X)];
s = stackedplot(X, Y, 'DisplayLabels', {'sin', 'cos', 'product'});
s.AxesProperties(1).YScale = 'linear';

```

Set top-level chart properties.

```matlab

close all
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Temperature, Rain);
s = stackedplot(T, {'Temperature', 'Rain'}, ...
  XLimits=[1 4], ...
  GridVisible="on", ...
  LegendVisible="on", ...
  LegendLabels={'Temperature', 'Rain'}, ...
  FontSize=13, ...
  MarkerFaceColor=[0 1 0]);
s.Color = [0 0 1];

```

Plot matching variables from two tables in the same axes.

```matlab

close all
Time = (1:6)';
T1 = table(Time, [19.4; 20.1; 21.7; 23.2; 22.6; 20.9], ...
  [0; 0.2; 0; 1.1; 0.4; 0], ...
  'VariableNames', {'Time', 'Temperature', 'Rain'});
T2 = table(Time, [18.9; 19.7; 21.0; 22.8; 22.0; 20.1], ...
  [0.1; 0.0; 0.1; 0.9; 0.5; 0.2], ...
  'VariableNames', {'Time', 'Temperature', 'Rain'});
s = stackedplot(T1, T2, {'Temperature', 'Rain'}, '--o', ...
  'XVariable', 'Time', ...
  'Title', 'Two stations');

```

Place matching variables in separate axes.

```matlab

close all
Time = (1:4)';
T1 = table(Time, [10; 11; 12; 13], 'VariableNames', {'Time', 'Value'});
T2 = table(Time, [20; 21; 22; 23], 'VariableNames', {'Time', 'Value'});
s = stackedplot({T1, T2}, {'Value'}, ...
  'XVariable', 'Time', ...
  'CombineMatchingNames', false);

```

Create a stacked plot in a specified figure.

```matlab

close all
f = figure();
Temperature = [19.4; 20.1; 21.7; 23.2];
Rain = [0; 0.2; 0; 1.1];
T = table(Temperature, Rain);
s = stackedplot(f, T, 'LineWidth', 2);

```

## 🔗 See also

[stackedplot properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md), [table](../../../table/table.md), [timetable](../../../table/timetable.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
