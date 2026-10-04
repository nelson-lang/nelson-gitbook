# uitree

Create tree or check box tree component.

## 📝 Syntax

- h = uitree()
- h = uitree(parent)
- h = uitree(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent object.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI object.

## 📄 Description

<b>t = uitree</b> creates a tree; <b>uitree(parent, 'checkbox')</b> creates a check box tree. Children are uitreenode objects. Properties: <b>SelectedNodes</b>, <b>Multiselect</b> (standard tree), <b>CheckedNodes</b>/<b>CheckedNodesChangedFcn</b> (checkbox tree), <b>Editable</b>, <b>SelectionChangedFcn</b>, <b>NodeExpandedFcn</b>, <b>NodeCollapsedFcn</b>. Use <b>expand(t)</b> / <b>collapse(t)</b>.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Tree', 'Position', [100 100 420 260]);
tr = uitree(f, 'Position', [70 40 210 180]);
n1 = uitreenode(tr, 'Text', 'Fruits');
uitreenode(n1, 'Text', 'Apple');
uitreenode(n1, 'Text', 'Banana');
expand(tr);
drawnow();
```

<img src="uitree_example.svg" align="middle"/>
uitree

```matlab

f = uifigure();
t = uitree(f);
n1 = uitreenode(t, 'Text', 'Fruits');
n2 = uitreenode(n1, 'Text', 'Apple');
expand(t);

```

## 🔗 See also

[uifigure](../../../gui/uifigure.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
