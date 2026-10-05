#import "../../nelson_help.typ": *

= uicontrol <graphics:2_graphics_objects.3_ui_controls.uicontrol>

Créer un composant d'interface utilisateur.

== Syntaxe

- #raw("c = uicontrol()");
- #raw("c = uicontrol(propertyName, propertyValue)");
- #raw("c = uicontrol(parent)");
- #raw("c = uicontrol(parent, propertyName, propertyValue, ...)");
- #raw("uicontrol(c)");

== Argument d'entrée

/ parent: Objet graphique de type figure.
/ propertyName: Nom de la propriété : une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Valeur de la propriété : une valeur compatible avec le nom de la propriété.
/ c: Un objet de contrôle d'interface utilisateur.

== Argument de sortie

/ c: Un objet de contrôle d'interface utilisateur.

== Description

#strong[c \= uicontrol]; crée un bouton poussoir, qui est le contrôle d'interface utilisateur par défaut, dans la figure actuelle et retourne l'objet uicontrol associé. Si aucune figure n'est actuellement ouverte, Nelson en génère une à l'aide de la fonction figure.

 #strong[c \= uicontrol(propertyName, propertyValue)]; crée un contrôle d'interface utilisateur avec des propriétés définies par un ou plusieurs arguments nom-valeur. Par exemple, spécifier 'Style', 'button' créera un bouton.

 #strong[c \= uicontrol(parent)]; crée le contrôle d'interface utilisateur par défaut (bouton poussoir) dans le conteneur parent spécifié, au lieu de se baser sur la figure actuelle.

 #strong[c \= uicontrol(parent, propertyName, propertyValue)]; crée un contrôle d'interface utilisateur dans le conteneur parent spécifié, permettant de définir ses propriétés à l'aide d'un ou plusieurs arguments nom-valeur.

 #strong[uicontrol(c)]; met le focus sur un contrôle d'interface utilisateur précédemment défini, le plaçant au premier plan pour l'interaction utilisateur.

 

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontrol.properties>)[proprietes de uicontrol]; pour la liste complete des proprietes.


== Exemples

Bouton poussoir

``````matlab

f = figure;
b = uicontrol(f,'Style','pushbutton', 'String', 'Cliquez-moi', 'Position', [100 100 60 30], 'Callback', 'disp(''Bonjour tout le monde!'')')

``````


#align(center)[#image("uicontrol_1.png")]
Case à cocher

``````matlab

f = figure();
h = uicontrol(Style='checkbox', String='Cliquez-moi!', Position=[100, 100, 100, 50]);

``````


#align(center)[#image("uicontrol_2.png")]
Édition

``````matlab

f = figure();
h = uicontrol(Style='edit', String='Cliquez-moi!', Position=[100, 100, 100, 50]);

``````


#align(center)[#image("uicontrol_3.png")]
Image

``````matlab

hFig = figure(Position=[100, 100, 300, 300]);
imgSize = 50;  % Taille de l'image
[X, Y] = meshgrid(1:imgSize, 1:imgSize);
CData = cat(3, X/imgSize, Y/imgSize, zeros(imgSize));
CData = im2double(CData);  % S'assurer que l'image est de type double
hButton = uicontrol(Style='pushbutton',  Position=[100, 100, 100, 100], CData=CData, String='Cliquez-moi!');

``````


#align(center)[#image("uicontrol_4.png")]
Démo uicontrol

``````matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo
uicontrol_demo

``````


#align(center)[#image("uicontrol_5.png")]
Démo uicontrol Interruptible

``````matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

``````


#align(center)[#image("uicontrol_6.png")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontrol.properties>)[proprietes de uicontrol];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.graphical_callback>)[Gérer les interruptions de callback dans Nelson];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.7.0], [Version initiale],
  [1.14.0], [Propriété Units ajoutée],
)

// Auteur: Allan CORNET
