# uitree

Crée un arbre ou un arbre à cases à cocher.

## 📝 Syntaxe

- h = uitree()
- h = uitree(parent)
- h = uitree(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent object.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI object.

## 📄 Description

<b>t = uitree</b> crée un arbre ; <b>uitree(parent, 'checkbox')</b> crée un arbre à cases à cocher. Les enfants sont des objets uitreenode. Propriétés : <b>SelectedNodes</b>, <b>Multiselect</b> (arbre standard), <b>CheckedNodes</b>/<b>CheckedNodesChangedFcn</b> (arbre à cases), <b>Editable</b>, <b>SelectionChangedFcn</b>, <b>NodeExpandedFcn</b>, <b>NodeCollapsedFcn</b>. Utiliser <b>expand(t)</b> / <b>collapse(t)</b>.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

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
n2 = uitreenode(n1, 'Text', 'Pomme');
expand(t);

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
