# animatedline

Creer une ligne animee.

## 📝 Syntaxe

- an = animatedline()
- an = animatedline(x, y)
- an = animatedline(x, y, z)
- an = animatedline(ax, ...)
- an = animatedline(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- x, y, z - coordonnees numeriques: scalaires ou tableaux avec le meme nombre d'elements.
- ax - axes cible ou objet groupe.
- propertyName - chaine scalaire ou vecteur de caracteres.
- propertyValue - valeur de propriete.

## 📤 Argument de sortie

- an - objet graphique de type animatedline.

## 📄 Description


<b>animatedline</b> cree une ligne animee sans point stocke. 

<b>animatedline(x, y)</b> cree une ligne animee initialisee avec des coordonnees deux dimensions. 

<b>animatedline(x, y, z)</b> cree une ligne animee initialisee avec des coordonnees trois dimensions. 

Utilisez <b>addpoints</b>, <b>clearpoints</b> et <b>getpoints</b> pour modifier ou lire les coordonnees stockees. 

<b>MaximumNumPoints</b> limite le nombre de points stockes et conserve les points les plus recents. 

Voir [proprietes de animatedline](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.md) pour la liste complete des proprietes.

## 💡 Exemple



```matlab
f = figure();
ax = axes('Parent', f);
an = animatedline(ax, 'Color', [0 0.4 0.8], 'LineWidth', 2);
x = linspace(0, 2*pi, 120);
addpoints(an, x, sin(x));
drawnow
```


## 🔗 Voir aussi

[proprietes de animatedline](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.md), [addpoints](../../../graphics/1_plots/8_animation/addpoints.md), [clearpoints](../../../graphics/1_plots/8_animation/clearpoints.md), [getpoints](../../../graphics/1_plots/8_animation/getpoints.md), [comet](../../../graphics/1_plots/8_animation/comet.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
