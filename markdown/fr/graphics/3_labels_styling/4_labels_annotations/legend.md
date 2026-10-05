# legend

Ajoute une legende aux axes.

## 📝 Syntaxe

- legend()
- legend(label1, ..., labelN)
- legend(labels)
- legend(plotHandles, labels)
- legend('off')
- legend('hide')
- legend('show')
- legend('toggle')
- legend('boxon')
- legend('boxoff')
- legend(ax, ...)
- legend(ax, plotHandles, labels)
- legend(..., 'Location', lcn)
- legend(..., propertyName, propertyValue)
- L = legend(...)
- [L, icons, plots, text] = legend(...)

## 📥 Argument d'entrée

- label1, ..., labelN - definit les etiquettes de la legende.
- labels - cellule de vecteurs de caracteres ou tableau de chaines.
- plotHandles - objets graphiques a inclure dans la legende.
- 'off' - supprime la legende.
- 'toggle' - active ou desactive la visibilite de la legende.
- 'hide' - masque la legende.
- 'show' - affiche la legende.
- 'boxon' - affiche l'encadre autour de la legende.
- 'boxoff' - masque l'encadre autour de la legende.
- ax - axes ou axes polaires cible.
- lcn - emplacement de la legende. La valeur par defaut est 'northeast'.
- propertyName - chaine scalaire ou vecteur ligne de caracteres.
- propertyValue - une valeur.

## 📤 Argument de sortie

- L - un objet graphique de type legend.
- icons - vecteur d'objets graphiques reserve aux icones de legende.
- plots - objets graphiques representes par la legende.
- text - vecteur d'objets graphiques reserve aux textes de legende.

## 📄 Description


<b>legend</b> cree ou met a jour une legende attachee aux axes cibles. 

Si les etiquettes sont omises, elles sont prises depuis la propriete <b>DisplayName</b> des objets traces. Quand <b>AutoUpdate</b> vaut <b>on</b>, les nouveaux objets traces sont ajoutes automatiquement. 

L'objet renvoye a le type <b>legend</b> et prend en charge les proprietes <b>AutoUpdate</b>, <b>Box</b>, <b>BackgroundAlpha</b>, <b>Color</b>, <b>EdgeColor</b>, <b>FontName</b>, <b>FontSize</b>, <b>FontAngle</b>, <b>FontWeight</b>, <b>Interpreter</b>, <b>ItemHitFcn</b>, <b>LineWidth</b>, <b>Location</b>, <b>NumColumns</b>, <b>Orientation</b>, <b>IconColumnWidth</b>, <b>Direction</b>, <b>Position</b>, <b>String</b>, <b>TextColor</b>, <b>Units</b>, <b>Title</b>, ainsi que les proprietes communes des objets graphiques. 

<b>Emplacement de la legende sur le graphique :</b> 

'northeast' ou 'NE' : en haut a droite (par defaut). 

'north' ou 'N' : en haut au centre. 

'south' ou 'S' : en bas au centre. 

'east' ou 'E' : au milieu a droite. 

'west' ou 'W' : au milieu a gauche. 

'northwest' ou 'NW' : en haut a gauche. 

'southeast' ou 'SE' : en bas a droite. 

'southwest' ou 'SW' : en bas a gauche. 

Les emplacements exterieurs sont aussi pris en charge : 'northoutside', 'southoutside', 'eastoutside' et 'westoutside'. 

Voir [proprietes de legend](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.legend.properties.md) pour la liste complete des proprietes.

## 💡 Exemples



```matlab
f = figure();
x = linspace(0, 10);
y1 = sin(x);
y2 = cos(x);
ax = gca();
plot(ax, x, y1, 'DisplayName', 'sin(x)');
hold(ax, 'on');
plot(ax, x, y2, 'DisplayName', 'cos(x)');
legend(ax, 'Location', 'N')
```
<img src="legend.svg" align="middle"/>


```matlab
f = figure();
x = 1:5;
plot(x, x);
hold on
plot(x, x .^ 2);
lgd = legend({'linear'; 'quadratic'}, 'NumColumns', 2);
title(lgd, 'Curves')
```


## 🔗 Voir aussi

[proprietes de legend](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.legend.properties.md), [title](../../../graphics/3_labels_styling/4_labels_annotations/title.md), [text](../../../graphics/3_labels_styling/4_labels_annotations/text.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
