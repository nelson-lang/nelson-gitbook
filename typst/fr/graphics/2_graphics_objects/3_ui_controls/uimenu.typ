#import "../../nelson_help.typ": *

= uimenu <graphics:2_graphics_objects.3_ui_controls.uimenu>

Creer un objet graphique menu ou entree de menu.

== Syntaxe

- #raw("m = uimenu()");
- #raw("m = uimenu(parent)");
- #raw("m = uimenu(propertyName, propertyValue, ...)");
- #raw("m = uimenu(parent, propertyName, propertyValue, ...)");

== Argument d'entrée

/ parent: Objet graphique figure, menu contextuel ou menu. Si cet argument est omis, la figure courante est utilisee.
/ propertyName: Nom de propriete : chaine scalaire ou vecteur ligne de caracteres.
/ propertyValue: Valeur compatible avec le nom de propriete.

== Argument de sortie

/ m: Objet graphique menu.

== Description

#strong[uimenu]; cree un menu dans la barre de menus d'une figure, un sous-menu ou une entree de menu contextuel selon le parent.

 La propriete #strong[Text]; controle le libelle affiche. Les caracteres esperluette sont conserves afin que la boite a outils native expose les mnemoniques clavier.

 La propriete #strong[Position]; ordonne les menus freres. La propriete #strong[Children]; liste les enfants dans la hierarchie graphique.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uimenu.properties>)[proprietes de uimenu]; pour la liste complete des proprietes.


== Exemple

Creer un menu de figure.

``````matlab

f = figure();
fileMenu = uimenu(f, 'Text', '&File');
uimenu(fileMenu, 'Text', 'Open', 'Accelerator', 'O');
uimenu(fileMenu, 'Text', 'Checked item', 'Checked', 'on', 'Separator', 'on');

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uimenu.properties>)[proprietes de uimenu];.
