# uitreenode

Create tree node.

## 📝 Syntax

- h = uitreenode()
- h = uitreenode(parent)
- h = uitreenode(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent object.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI object.

## 📄 Description

<b>n = uitreenode(parent)</b> creates a tree node in a uitree or under another TreeNode. Properties: <b>Text</b>, <b>NodeData</b>, <b>Icon</b>, <b>ContextMenu</b>.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Tree nodes', 'Position', [100 100 420 260]);
tr = uitree(f, 'Position', [70 40 210 180]);
n1 = uitreenode(tr, 'Text', 'Project');
uitreenode(n1, 'Text', 'Input');
uitreenode(n1, 'Text', 'Results');
expand(tr);
drawnow();
```

<img src="uitreenode_example.svg" align="middle"/>
uitreenode

```matlab

f = uifigure();
t = uitree(f);
n = uitreenode(t, 'Text', 'Node 1', 'NodeData', [1 2 3]);

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
