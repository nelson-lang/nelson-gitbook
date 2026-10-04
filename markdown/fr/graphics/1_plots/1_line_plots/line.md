# line

Crée une ligne primitive.

## 📝 Syntaxe

- go = line()
- po = line(x, y)
- go = line(x, y, z)
- go = line(ax, x, y, z)
- go = line(ax, x, y, z, propertyName, propertyValue)

## 📥 Argument d'entrée

- x, y , z - Un ou plusieurs vecteurs ou matrices de coordonnées.
- ax - Axes cibles : objet axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- go - Un objet graphique : type ligne.

## 📄 Description

<b>line(x, y)</b> crée une ligne dans les axes courants avec les vecteurs<b>x</b> et <b>y</b>.

<b>line(x, y, z)</b> crée une ligne en coordonnées tridimensionnelles.

Voir [proprietes de line](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.line.properties.md) pour la liste complete des proprietes.

<b>BeingDeleted</b> Indicateur signalant que l'objet est en cours de suppression.

## 💡 Exemples

```matlab
f = figure();
x = linspace(0,10)';
y1 = sin(x);
y2 = cos(x);
line(x, y1, 'Color', [0 1 0])
line(x, y2, 'Color', [1 0 0])

```

<img src="line_xy.svg" align="middle"/>

```matlab
f = figure();
x = [1 9];
y = [2 12];
line(x,y,'Color','red','LineStyle','--')
```

<img src="line_linestyle.svg" align="middle"/>

```matlab
f = figure();
t = linspace(0,10*pi,400);
x = sin(t);
y = cos(t);
z = t;
line(x,y,z)
view(3)
```

<img src="line_xyz.svg" align="middle"/>

## 🔗 Voir aussi

[proprietes de line](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.line.properties.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md), [plot3](../../../graphics/1_plots/1_line_plots/plot3.md).

## 🕔 Historique

| Version | 📄 Description                            |
| ------- | ----------------------------------------- |
| 1.0.0   | version initiale                          |
| 1.7.0   | Ajout des callbacks CreateFcn, DeleteFcn. |
| --      | Ajout de la propriété BeingDeleted.       |
| --      | Ajout des proprietes polaires de ligne.   |

<!--
## 👤 Auteur

Allan CORNET
-->
