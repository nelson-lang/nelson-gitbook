# uimenu

Creer un objet graphique menu ou entree de menu.

## 📝 Syntaxe

- m = uimenu()
- m = uimenu(parent)
- m = uimenu(propertyName, propertyValue, ...)
- m = uimenu(parent, propertyName, propertyValue, ...)

## 📥 Argument d'entrée

- parent - Objet graphique figure, menu contextuel ou menu. Si cet argument est omis, la figure courante est utilisee.
- propertyName - Nom de propriete : chaine scalaire ou vecteur ligne de caracteres.
- propertyValue - Valeur compatible avec le nom de propriete.

## 📤 Argument de sortie

- m - Objet graphique menu.

## 📄 Description


<b>uimenu</b> cree un menu dans la barre de menus d'une figure, un sous-menu ou une entree de menu contextuel selon le parent. 

La propriete <b>Text</b> controle le libelle affiche. Les caracteres esperluette sont conserves afin que la boite a outils native expose les mnemoniques clavier. 

La propriete <b>Position</b> ordonne les menus freres. La propriete <b>Children</b> liste les enfants dans la hierarchie graphique. 

Voir [proprietes de uimenu](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.md) pour la liste complete des proprietes.

## 💡 Exemple

Creer un menu de figure.

```matlab

f = figure();
fileMenu = uimenu(f, 'Text', '&File');
uimenu(fileMenu, 'Text', 'Open', 'Accelerator', 'O');
uimenu(fileMenu, 'Text', 'Checked item', 'Checked', 'on', 'Separator', 'on');

```


## 🔗 Voir aussi

[proprietes de uimenu](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.md).