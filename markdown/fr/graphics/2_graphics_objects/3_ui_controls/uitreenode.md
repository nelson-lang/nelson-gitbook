# uitreenode

Crée un nœud d'arbre.

## 📝 Syntaxe

- h = uitreenode()
- h = uitreenode(parent)
- h = uitreenode(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent object.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI object.

## 📄 Description

<b>n = uitreenode(parent)</b> crée un nœud dans un uitree ou sous un autre TreeNode. Propriétés : <b>Text</b>, <b>NodeData</b>, <b>Icon</b>, <b>ContextMenu</b>.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

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
n = uitreenode(t, 'Text', 'Nœud 1', 'NodeData', [1 2 3]);

```

## 🔗 Voir aussi

[uifigure](../../../gui/uifigure.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
