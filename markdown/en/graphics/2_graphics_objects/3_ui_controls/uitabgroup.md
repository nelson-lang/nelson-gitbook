# uitabgroup

Create tab group container.

## 📝 Syntax

- h = uitabgroup()
- h = uitabgroup(parent)
- h = uitabgroup(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - container object.

## 📄 Description


<b>tg = uitabgroup</b> creates a tab group container. Children are uitab objects. Main properties: <b>TabLocation</b> ('top', 'bottom', 'left', 'right'), <b>SelectedTab</b>, <b>SelectionChangedFcn</b> (event data with <b>OldValue</b> and <b>NewValue</b>).

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Tab group', 'Position', [100 100 420 260]);
tg = uitabgroup(f, 'Position', [55 40 310 180]);
t1 = uitab(tg, 'Title', 'First');
t2 = uitab(tg, 'Title', 'Second');
tg.SelectedTab = t2;
uilabel(t2, 'Text', 'Second tab', 'Position', [35 70 120 24]);
drawnow();
```
<img src="uitabgroup_example.svg" align="middle"/>
uitabgroup

```matlab

f = uifigure();
tg = uitabgroup(f, 'Position', [20 20 250 210]);
t1 = uitab(tg, 'Title', 'First');
t2 = uitab(tg, 'Title', 'Second');
tg.SelectedTab = t2;

```


## 🔗 See also

[uifigure](../../../gui/uifigure.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
