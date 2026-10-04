# uicontextmenu

Creer un objet graphique de menu contextuel.

## 📝 Syntaxe

- cm = uicontextmenu()
- cm = uicontextmenu(parent)
- cm = uicontextmenu(propertyName, propertyValue, ...)
- cm = uicontextmenu(parent, propertyName, propertyValue, ...)

## 📥 Argument d'entrée

- parent - Objet graphique figure. Si cet argument est omis, la figure courante est utilisee.
- propertyName - Nom de propriete : chaine scalaire ou vecteur ligne de caracteres.
- propertyValue - Valeur compatible avec le nom de propriete.

## 📤 Argument de sortie

- cm - Objet graphique de menu contextuel.

## 📄 Description

<b>uicontextmenu</b> cree un menu contextuel qui peut etre assigne a la propriete <b>ContextMenu</b> des figures, axes, controles et autres objets graphiques.

Les entrees de menu sont creees avec <b>uimenu</b> en utilisant le menu contextuel comme parent.

Voir [proprietes de uicontextmenu](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.md) pour la liste complete des proprietes.

## 💡 Exemple

Associer un menu contextuel a des axes.

```matlab

f = figure();
ax = axes('Parent', f);
cm = uicontextmenu(f);
uimenu(cm, 'Text', 'Reset view', 'MenuSelectedFcn', 'disp(''reset'')');
ax.ContextMenu = cm;

```

## 🔗 Voir aussi

[proprietes de uicontextmenu](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.md).
